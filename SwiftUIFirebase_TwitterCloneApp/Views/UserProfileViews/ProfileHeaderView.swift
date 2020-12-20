import SwiftUI
import KingfisherSwiftUI

struct ProfileHeaderView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    let user: UserModel
    //∆..............................
    
    ///∆ ............... Class Methods ...............
    
    
    var body: some View {
        
        //.............................
        VStack {
            
            // MARK: -∆ ••••••••• [ Batman Profile Image ] •••••••••
            KFImage(URL(string: user.profileImageURL))
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 120, height: 120)
                .cornerRadius(120)
                .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
            
            // MARK: -∆ ••••••••• [ Profile Name ] •••••••••
            Text(user.fullname)
                .font(.system(size: 16, weight: .semibold))
                .shadow(color: Color.black.opacity(0.65), radius: 4, x: 3, y: 3)
                .padding(.top, 8)
            // MARK: -∆ ••••••••• [ @Account Name ] •••••••••
            Text("@\(user.username)")
                .font(.subheadline)
                .foregroundColor(Color.black.opacity(0.55))
                .shadow(color: Color.gray, radius: 10, x: 3, y: 3)
            
            // MARK: -∆ ••••••••• [ Small Comment About Account ] •••••••••
            Text("Billionare by day, dark knight by night")
                .font(.system(size: 14))
                .padding(.top, 8)
                .shadow(color: Color.black.opacity(0.55), radius: 4, x: 3, y: 3)
            
            // MARK: -∆ ••••••••• [ Followers : Following ] •••••••••
            HStack(spacing: 40) {
                
                // MARK: -∆ ••••••••• [ Followers ] •••••••••
                VStack {
                    
                    Text("17")
                        .font(.system(size: 16, weight: .bold))
                        .shadow(color: Color.black.opacity(0.45),
                                radius: 4, x: 3, y: 3)
                    
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .shadow(color: Color.gray, radius: 10, x: 3, y: 3)
                }
                
                // MARK: -∆ ••••••••• [ Following ] •••••••••
                VStack {
                    
                    Text("1")
                        .font(.system(size: 16, weight: .bold))
                        .shadow(color: Color.black.opacity(0.45),
                                radius: 2, x: 2, y: 4)
                    
                    Text("Following")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .shadow(color: Color.gray, radius: 10, x: 3, y: 3)
                }
            }// ∆ END HStack
            .padding()
            //∆ HANGER ™👕™ .................
            
            // MARK: -∆ ••••••••• [ Edit Profile Button ] •••••••••
            ProfileActionBtnComponent(isCurrentUser: user.isCurrentUser)
            
            Spacer(minLength: 0) // Spaced Vertically
            
        }///||END__PARENT-VSTACK||
        .padding()
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

