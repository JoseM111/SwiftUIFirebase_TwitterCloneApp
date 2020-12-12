import SwiftUI

// MARK: - Preview
struct ProfileActionBtnComponent_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ProfileActionBtnComponent(isCurrentUser: false)//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct ProfileActionBtnComponent: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    let isCurrentUser: Bool
    //∆..............................
    
    ///∆ ............... Class Methods ...............
    
    
    var body: some View {
        
        //.............................
        if isCurrentUser {
            // MARK: -∆ ••••••••• [ Edit Profile Button ] •••••••••
            //∆.......... If isCurrentUser == true ꜜ⇓⇓⇓ꜜ
            Button("Edit Profile", completionWhenText: {
                // CODE

                //∆..........
            })
            .modifier(ActionButtonMod(bgColor: .blue, frameWidth: 340))
            //∆..........
        } else {
            //∆..........
            HStack {
                
                // MARK: -∆ ••••••••• [ Follow Button ] •••••••••
                Button("Follow", completionWhenText: {
                    // CODE
                    
                    //∆..........
                })
                .modifier(ActionButtonMod(bgColor: .blue, frameWidth: 160))
                
                //∆.....................................................
                
                // MARK: -∆ ••••••••• [ Message Button ] •••••••••
                Button("Message", completionWhenText: {
                    // CODE
                    
                    //∆..........
                })
                .modifier(ActionButtonMod(bgColor: .purple, frameWidth: 160))
            }
        }// ∆ END if-else
        
        
        
        
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

