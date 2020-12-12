import SwiftUI

// MARK: - Preview
struct ProfileHeaderView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ProfileHeaderView()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct ProfileHeaderView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    
    //∆..............................
    
    ///∆ ............... Class Methods ...............
    
    
    var body: some View {
        
        //.............................
        VStack {
            
            // MARK: -∆ ••••••••• [ Batman Profile Image ] •••••••••
            Image("batman")
                .imageCircleMod(aspectR: .fill, frameW: 120, frameH: 120)
                .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
            
            // MARK: -∆ ••••••••• [ Profile Name ] •••••••••
            Text("Bruce Wayne")
                .font(.system(size: 16, weight: .semibold))
                .shadow(color: Color.black.opacity(0.65), radius: 4, x: 3, y: 3)
            // MARK: -∆ ••••••••• [ @Account Name ] •••••••••
            Text("@batman")
                .font(.subheadline)
                .foregroundColor(Color.black.opacity(0.55))
                .shadow(color: Color.gray, radius: 10, x: 3, y: 3)
            
            // MARK: -∆ ••••••••• [ Small Comment About Account ] •••••••••
            Text("Billionare by day, dark knight by night")
                .padding(.top, 8)
                .shadow(color: Color.black.opacity(0.55), radius: 4, x: 3, y: 3)
            
        }///||END__PARENT-VSTACK||
        
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

