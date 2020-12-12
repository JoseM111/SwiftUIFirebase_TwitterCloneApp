import SwiftUI

// MARK: - Preview
struct UserCellComponent_Previews: PreviewProvider {
    
    static var previews: some View {
        
        UserCellComponent()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        .previewLayout(.fixed(width: 440, height: 270))
    }
}

struct UserCellComponent: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    
    //∆..............................
    
    var body: some View {
        
        //.............................
        HStack(spacing: 12) {
            
            // MARK: -∆ ••••••••• [ Venom Circular Image ] •••••••••
            Image("venom-10")
                .imageCircleMod(aspectR: .fill, frameW: 56, frameH: 56)
                .shadow(color: Color.black.opacity(0.65),
                        radius: 10, x: 2, y: 4)
            //∆ ........... VStack ...........
            VStack(alignment: .leading, spacing: 4) {
                
                Text("venom")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("Eddie Brock")
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

