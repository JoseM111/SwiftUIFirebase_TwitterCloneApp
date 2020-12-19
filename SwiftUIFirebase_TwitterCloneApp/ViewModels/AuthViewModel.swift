import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    
    //∆ ........... [ Class Methods ] ...........
    
    // MARK: -∆ ••••••••• login •••••••••
    func login() -> Void {
        //∆..........
        
        
    }/// ∆ END LOGIN
    
    // MARK: -∆ ••••••••• registerUser •••••••••
    func registerUser(email: String, password: String, username: String,
                      fullname: String, profileImage: UIImage) {
        //∆..........
        // MARK: -∆ (1) Upload Image •••••••••
        guard let imageData = profileImage.jpegData(compressionQuality: 0.3) else { return }
        /// ∆ Unique identifier for the image being uploaded
        let filename = NSUUID().uuidString
        
        let storageRef = Storage.storage().reference().child(filename)
        
        storageRef.putData(imageData, metadata: nil) { _, error in
            //∆..........
            if let error = error {
                print("\nDEBUG: {!!!} [ERROR] Failed to upload image...\(error.localizedDescription) {!!!}")
                return
            }
            
            /// ∆ Should print out before user is created
            print("DEBUG: Successfully uploaded user photo...")
            
            /// ∆ Accessing the image `URL`
            storageRef.downloadURL { url, _ in
                //∆..........
                guard let profileImageURL = url?.absoluteString else { return }
                
                // MARK: -∆ (2) Firebase callback to create user •••••••••
                Auth.auth().createUser(withEmail: email, password: password) { result, error in
                    //∆..........
                    if let error = error {
                        print("\nDEBUG: {!!!} [ERROR] Could not create user...\(error.localizedDescription) {!!!}")
                        return
                    }
                    
                    // MARK: -∆ (3) Create uid •••••••••
                    guard let user = result?.user else { return }
                    
                    // MARK: -∆ (4) Creating our document dictionary with keys & values •••••••••
                    typealias k = RegistrationKeys
                    let data: [String : String] = [
                        k.emailKey : email,
                        k.passwordKey : password,
                        k.usernameKey : username,
                        k.fullnameKey : fullname,
                        k.profileImageURLKey : profileImageURL,
                        k.uidKey: user.uid
                    ]
                    
                    Firestore.firestore().collection("users").document(user.uid).setData(data) { _ in
                        //∆..........
                        print("DEBUG: Successfully signed up user\n")
                        
                        self.debugRegistrationOutput(email, password, username, fullname)
                    }
                    
                }// ∆ END createUser into firebase

            }// ∆ END storageRef.downloadURL
            
        }// MARK: -∆  registerUser •••••••••
        
        
    }/// ∆ END REGISTERUSER
    
    // MARK: -∆ ••••••••• Helper Function •••••••••
    fileprivate func debugRegistrationOutput(_ email: String, _ password: String,
                                       _ username: String, _ fullname: String) {
        //∆..........
        print("""
              DEBUG
              DEBUG: [ REGISTERED USER INFO ]

              DEBUG-> Email: \(email)
              DEBUG-> Password: \(password)
              DEBUG-> User Name: \(username)
              DEBUG-> Full Name: \(fullname)
              """)
    }
    
}// MARK: -∆ AuthViewModel
