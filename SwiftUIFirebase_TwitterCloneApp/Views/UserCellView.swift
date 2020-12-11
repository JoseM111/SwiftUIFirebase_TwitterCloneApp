import SwiftUI

// MARK: - Preview
struct UserCellView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        UserCellView()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        .previewLayout(.fixed(width: 440, height: 270))
    }
}

struct UserCellView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    
    //∆..............................
    
    var body: some View {
        
        //.............................
        HStack(spacing: 12) {
            
            CircleImageComponent(imageName: "venom-10")
            
            //∆ ........... VStack ...........
            VStack(alignment: .leading, spacing: 4) {
                
                Text("venom")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("Eddie Brock")
                    .font(.system(size: 14))
            }
            
        }///||END__PARENT-VSTACK||
        
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
    ///∆ ............... Class Methods ...............
    
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

