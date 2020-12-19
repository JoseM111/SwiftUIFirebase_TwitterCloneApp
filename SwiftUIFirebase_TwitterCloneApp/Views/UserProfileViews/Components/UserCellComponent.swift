import SwiftUI
import KingfisherSwiftUI

// MARK: - Preview
struct UserCellComponent: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    let user: UserModel
    //∆..............................
    
    var body: some View {
        
        //.............................
        HStack(spacing: 12) {
            
            // MARK: -∆ ••••••••• [ Venom Circular Image ] •••••••••
            KFImage(URL(string: user.profileImageURL))
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 56, height: 56)
                .cornerRadius(28)
                .shadow(color: Color.black.opacity(0.65),
                        radius: 10, x: 2, y: 4)
            //∆ ........... VStack ...........
            VStack(alignment: .leading, spacing: 4) {
                
                Text("@\(user.username)")
                    .font(.system(size: 14, weight: .semibold))
                
                Text(user.fullname)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Color.black.opacity(0.85))
            }
            
        }///||END__PARENT-VSTACK||
        .foregroundColor(.black)
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
    ///∆ ............... Class Methods ...............
    
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

