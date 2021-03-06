import SwiftUI

// MARK: - Preview
struct RegistrationView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        RegistrationView()
        //.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct RegistrationView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @State var email: String = ""
    @State var password: String = ""
    @State var fullname: String = ""
    @State var username: String = ""
    @State var showImagePicker: Bool = false
    ///  ............
    ///  • Handles the state of the image picker functionality
    @State var selectedUIImage: UIImage?
    @State var image: Image?
    ///∆ ...........
    ///  • An environment object invalidates the current view
    ///    whenever the observable object changes. If you declare
    ///    a property as an environment object, be sure to set a
    ///    corresponding model object on an ancestor view by
    ///    calling its environmentObject(_:) modifier.
    ///  ............
    @EnvironmentObject var authViewModel: AuthViewModel
    //∆..............................
    
    var body: some View {
        
        ///∆ ........... Parent View ...........
        ZStack {
            
            //∆ ........... [ VSTACK ] ...........
            VStack {
                
                imagePickerFunc()
                //--|............................................
                
                ///∆ ........... [ VStack ] ...........
                VStack(spacing: 20) {
                    
                    // MARK: -∆ ••••••••• [ EMAIL TEXTFIELD ] •••••••••
                    CustomTextFieldComponent(text: $email,
                                             placeholder: Text("Email"),
                                             sfImageName: "envelope")
                    
                    // MARK: -∆ ••••••••• [ FULL NAME ] •••••••••
                    CustomTextFieldComponent(text: $fullname,
                                             placeholder: Text("Full Name"),
                                             sfImageName: "person")
                    
                    // MARK: -∆ ••••••••• [ USER NAME ] •••••••••
                    CustomTextFieldComponent(text: $username,
                                             placeholder: Text("Username"),
                                             sfImageName: "person")
                        .autocapitalization(.none)
                    
                    // MARK: -∆ ••••••••• [ PASSWORD TEXTFIELD ] •••••••••
                    CustomSecureFieldComponent(text: $password, placeholder: Text("Password"))
                        .foregroundColor(.white)
                }// ∆ END VStack
                .padding(.horizontal, 32)
                //∆ HANGER ™👕™ .................
                
                
                // MARK: -∆ ••••••••• [ Button(Sign Up) ] •••••••••
                Button(action: {
                    //∆..........
                    /// ∆ Unwrapping the `image` property
                    guard let image = selectedUIImage else { return }
                    
                    authViewModel.registerUser(
                        email: email.lowercased(),
                        password: password,
                        username: username,
                        fullname: fullname,
                        profileImage: image)
                }) {
                    //∆..... LABEL .....
                    Text("Sign Up")
                        .modifier(ButtonCustomFrame(
                                    bgColor: .white,
                                    fgColor: Color(#colorLiteral(red: 0.1155984178, green: 0.6330730319, blue: 0.9510951638, alpha: 1)),
                                    frameWidth: 360,
                                    frameHeight: 50))
                        .padding()
                }// ∆ END Button
                
                //∆ HANGER ™👕™ .................
                
                Spacer(minLength: 0) // Spaced Vertically
                
                // MARK: -∆ •• [ Custom Back Button(to dismiss the view from the stack) ] ••
                BackBtnComponent(text: "Already have an account?")
                
                
            }// ∆ END VStack
            
            //∆ HANGER ™👕™ .................
            
        }// MARK: ||END__PARENT-NAVIGATIONVIEW||
        
        // MARK: -∆ ••••••••• [ BACKGROUND-COLOR ] •••••••••
        .modifier(BgColor_On_ZStackModifier(bgColor: .twitterBlue2))
        //∆ HANGER ™👕™ .................

        //.............................
        
    }// MARK: ///-|_End Of body_|

    /*©-----------------------------------------©*/
    
}// END: [STRUCT]

extension RegistrationView {
    //∆..............................
    
    ///∆ ............... Class Methods ...............
    
    // MARK: -∆ • Converts a UIImage into a SwiftUI Image
    func loadImage() {
        //∆..........
        guard let selectedImage = selectedUIImage else { return }
        image = Image(uiImage: selectedImage)
    }
    
    fileprivate func convertedUIImageLoaded(for image: Image) -> some View {
        //∆..........
        return image
            .resizable()
            .scaledToFill()
            .frame(width: 140, height: 140)
            .clipShape(Circle())
            .padding(.top, 72)
            .padding(.bottom, 16)
    }
    
    fileprivate func defaultPlusSignImage(imageToLoad: String) -> some View {
        //∆..........
        return Image(imageToLoad)
            .resizable()
            .renderingMode(.template)
            .scaledToFill()
            .frame(width: 140, height: 140)
            .padding(.top, 72)
            .padding(.bottom, 16)
            .foregroundColor(.white)
    }
    
    fileprivate func imagePickerFunc() -> some View {
        return // MARK: -∆ ••••••••• [ Button(ADD-PHOTO) ] •••••••••
            Button(action: { showImagePicker.toggle() }) {
                //∆..... LABEL .....
                //∆..........
                if let image = image {
                    //∆..........
                    convertedUIImageLoaded(for: image)
                    //∆..........
                } else {
                    //∆..........
                    defaultPlusSignImage(imageToLoad: "plus_photo")
                }// ∆ END if-else
            }// ∆ END Button
            // MARK: - sheet To segue to a image picker & convert a UIImage to a Image when onDismiss runs the loadImage functions
            //--|............................................
            .sheet(isPresented: $showImagePicker, onDismiss: loadImage, content: {
                //∆..........
                ImagePickerComponent(uiImage: $selectedUIImage)
            })
    }
}// END: [STRUCT]

/*©-----------------------------------------©*/
