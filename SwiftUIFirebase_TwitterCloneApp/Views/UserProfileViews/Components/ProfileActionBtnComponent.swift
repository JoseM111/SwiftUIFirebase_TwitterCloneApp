import SwiftUI

struct ProfileActionBtnComponent: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    let profileVM: ProfileViewModel
    @Binding var isFollowed: Bool
    //∆..............................
    
    ///∆ ............... Class Methods ...............
    
    
    var body: some View {
        
        //.............................
        if profileVM.user.isCurrentUser {
            // MARK: -∆ ••••••••• [ Edit Profile Button ] •••••••••
            //∆.......... If isCurrentUser == true ꜜ⇓⇓⇓ꜜ
            Button("Edit Profile", completionWhenText: {
                // CODE
                
                //∆..........
            })
            .modifier(ButtonCustomFrame(bgColor: .twitterBlue2, frameWidth: 340))
            //∆ HANGER ™👕™ .................
            
            //∆..........
        } else {
            //∆..........
            HStack {
                
                // MARK: -∆ ••••••••• [ Follow Button ] •••••••••
                Button( isFollowed ? "Following" : "Follow", completionWhenText: {
                    // if
                    isFollowed ? profileVM.unFollow() : profileVM.follow()
                    //∆..........
                })
                .modifier(ButtonCustomFrame(bgColor: .twitterBlue2, frameWidth: 160))
                //∆ HANGER ™👕™ .................
                
                // MARK: -∆ ••••••••• [ Message Button ] •••••••••
                Button("Message", completionWhenText: {
                    // CODE
                    
                    //∆..........
                })
                .modifier(ButtonCustomFrame(bgColor: .darkPurple, frameWidth: 160))
            }
        }// ∆ END if-else
        
        
        
        
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

