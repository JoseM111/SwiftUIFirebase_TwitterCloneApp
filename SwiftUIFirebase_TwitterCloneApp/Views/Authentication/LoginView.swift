import SwiftUI

// MARK: - Preview
struct LoginView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        LoginView()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct LoginView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @State var email: String = ""
    @State var password: String = ""
    //∆..............................
    
    ///∆ ............... Class Methods ...............
    
    
    var body: some View {
        
        //.............................
        ZStack {
            
            //∆ ........... [ VSTACK ] ...........
            VStack {
                
                // MARK: -∆ ••••••••• [ TWITTER-LOGO ] •••••••••
                Image("twitter-logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 190, height: 100)
                    .padding(.top, 72)
                    .padding(.bottom)
                
                ///∆ ........... [ VStack ] ...........
                VStack(spacing: 20) {
                    
                    // MARK: -∆ ••••••••• [ EMAIL TEXTFIELD ] •••••••••
                    CustomTextFieldComponent(text: $email,
                                             placeholder: Text("Email"),
                                             sfImageName: "envelope")
                    
                    // MARK: -∆ ••••••••• [ PASSWORD TEXTFIELD ] •••••••••
                    CustomSecureFieldComponent(text: $password, placeholder: Text("Password"))
                }// ∆ END VStack
                .padding(.horizontal, 32)
                //∆ HANGER ™👕™ .................
                
                ///∆ ........... [ HStack ] ...........
                HStack {
                    
                    Spacer(minLength: 0) // Spaced Horizontally
                    
                    // MARK: -∆ ••••••••• [ Button(Forgot Password?) ] •••••••••
                    Button(action: {  }) {
                        //∆..... LABEL .....
                        Text("Forgot Password?")
                            .font(.footnote)
                            .foregroundColor(.white)
                            .bold()
                            .padding(.top, 16)
                            .padding(.trailing, 28)

                    }
                    
                }// ∆ END HStack
                
                //∆ HANGER ™👕™ .................
                
                // MARK: -∆ ••••••••• [ Button(Sign In) ] •••••••••
                Button(action: {  }) {
                    //∆..... LABEL .....
                    Text("Sign In")
                        .modifier(ButtonCustomFrame(
                                    bgColor: .white,
                                    fgColor: Color(#colorLiteral(red: 0.1155984178, green: 0.6330730319, blue: 0.9510951638, alpha: 1)),
                                    frameWidth: 360,
                                    frameHeight: 50))
                        .padding()
                }// ∆ END Button
                
                //∆ HANGER ™👕™ .................
                
                Spacer(minLength: 0) // Spaced Vertically
                
                ///∆ ........... [ HStack ] ...........
                HStack {
                    
                    Text("Dont't have an account?")
                        .font(.system(size: 14))
                    
                    Text("Sign Up")
                        .font(.system(size: 14, weight: .semibold))
                    
                }// ∆ END HStack
                .foregroundColor(.white)
                .padding(.bottom, 40)
                //∆ HANGER ™👕™ .................
                
                
            }// ∆ END VStack
            
            //∆ HANGER ™👕™ .................
            
        }///||END__PARENT-ZSTACK||
        // MARK: -∆ ••••••••• [ BACKGROUND-COLOR ] •••••••••
        .background(Color(#colorLiteral(red: 0.1155984178, green: 0.6330730319, blue: 0.9510951638, alpha: 1)))
        .ignoresSafeArea()
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

