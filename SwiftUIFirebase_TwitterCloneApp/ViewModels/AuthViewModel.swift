import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    // MARK: - ©PROPERTIES
    //∆..............................
    /// ∆ Keeps track if the user is logged in
    @Published var userSession: FirebaseAuth.User?
    /// ∆ Watches the process of `logging` in. Is on going or loading
    @Published var isAuthenticating: Bool = false
    @Published var error: Error?
    /// ∆ To load some user `data`
//    @Published var user: User?
    //∆..............................
    
    // MARK: -∆ Initializer
    ///∆.................................
    init() {
        /// ∆ Determines if a user is logged into firebase
        userSession = Auth.auth().currentUser
        fetchUser()
    }
    ///∆.................................
    
    //∆ ........... [ Class Methods ] ...........
    
    // MARK: -∆ ••••••••• login •••••••••
    func login(withEmail: String, password: String) -> Void {
        //∆..........
        Auth.auth().signIn(withEmail: withEmail, password: password) { result, error in
            //∆..........
            if let error = error {
                print("\nDEBUG: {!!!} [ERROR] Failed to login: \(error.localizedDescription) {!!!}")
                return
            }
            
            /// ∆ Will allow the LoginView to segue to the main interface if login is successful
            self.userSession = result?.user
            
            print("DEBUG: Successfully logged in...")
        }
        
    }// MARK: ∆ END LOGIN
    
    // MARK: -∆  logOut •••••••••
    func signOut() -> Void {
        //∆..........
        userSession = nil
        try? Auth.auth().signOut()
        
    }// MARK: END--> logOut
    
    // MARK: -∆  registerUser •••••••••
    func registerUser(email: String, password: String, username: String,
                      fullname: String, profileImage: UIImage) -> Void {
        //∆..........
        // MARK: -∆ (1) Upload Image •••••••••
        guard let imageData = profileImage.jpegData(compressionQuality: 0.3) else { return }
        /// ∆ Unique identifier for the image being uploaded
        let filename = NSUUID().uuidString
        
        let storageRef = Storage.storage().reference().child(filename)
        
        storageRef.putData(imageData, metadata: nil) { _, error in
            //∆..........
            if let error = error {
                print("\nDEBUG: {!!!} [ERROR] Failed to upload image: \(error.localizedDescription) {!!!}")
                return
            }
            
            /// ∆ Should print out before user is created
            print("DEBUG: Successfully uploaded user photo...")
            
            /// ∆ Accessing the image `URL` &
            storageRef.downloadURL { url, _ in
                //∆..........
                guard let profileImageURL = url?.absoluteString else { return }
                
                // MARK: -∆ (2) Firebase callback to create user •••••••••
                Auth.auth().createUser(withEmail: email, password: password) { result, error in
                    //∆..........
                    if let error = error {
                        print("\nDEBUG: {!!!} [ERROR] Could not create user: \(error.localizedDescription) {!!!}")
                        return
                    }
                    
                    // MARK: -∆ (3) Create uid •••••••••
                    guard let user = result?.user else { return }
                    
                    // MARK: -∆ (4) Creating our document dictionary with keys & values •••••••••
                    typealias k = RegistrationKeys
                    let data: [String : String] = [
                        k.emailKey : email,
                        k.passwordKey : password,
                        k.usernameKey : username.lowercased(),
                        k.fullnameKey : fullname,
                        k.profileImageURLKey : profileImageURL,
                        k.uidKey: user.uid
                    ]
                    
                    self.uploadCollectionToFirestore(
                        user: user, data: data,
                        email: email,
                        password: password,
                        username: username,
                        fullname: fullname)
                    
                }// ∆ END createUser into firebase
            }// ∆ END storageRef.downloadURL
            
        }
        
        
    }/// ∆ END OF: REGISTERUSER
    
    
}// MARK: END OF AuthViewModel

// MARK: -∆  extension AuthViewModel •••••••••
extension AuthViewModel {
    
    // MARK: -∆ ••••••••• registerUser •••••••••
    fileprivate func uploadCollectionToFirestore(user: User, data: [String : String],
                                                 email: String, password: String,
                                                 username: String,
                                                 fullname: String) {
        //∆..........
        COLLECTION_USERS_FIRESTORE.document(user.uid).setData(data) { _ in
            //∆..........
            /// ∆ Placed in this block to make sure the user data was uploaded for the user
            self.userSession = user
            
            print("DEBUG: Successfully signed up user\n")
            
            
            self.debugRegistrationOutput(email, password, username, fullname)
        }
    }
    
    // MARK: -∆ fetchUser •••••••••
    func fetchUser() -> Void {
        //∆..........
        guard let uid = userSession?.uid else { return }
        
        COLLECTION_USERS_FIRESTORE.document(uid).getDocument { snapShot, _ in
            //∆..........
            guard let data = snapShot?.data() else { return }
            let user = UserModel(dictionary: data)
            
            print("DEBUG-> USER: \(user.username)")
        }
    }
    
    // MARK: -∆ Helper Function •••••••••
    fileprivate func debugRegistrationOutput(_ email: String, _ password: String,
                                             _ username: String, _ fullname: String) {
        //∆..........
        print("""
              [DEBUG]
              DEBUG: [ REGISTERED USER INFO ]
              DEBUG-> Email: \(email)
              DEBUG-> Password: \(password)
              DEBUG-> User Name: \(username)
              DEBUG-> Full Name: \(fullname)
              """)
    }
    
}/// ∆ END OF: extension AuthViewModel
