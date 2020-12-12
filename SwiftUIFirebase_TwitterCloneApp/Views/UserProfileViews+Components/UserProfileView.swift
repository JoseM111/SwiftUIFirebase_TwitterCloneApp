import SwiftUI

// MARK: - Preview
struct UserProfileView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        UserProfileView()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct UserProfileView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    
    //∆..............................
    
    ///∆ ............... Class Methods ...............
    
    
    var body: some View {
        
        //.............................
        ScrollView {
            
            VStack {
                
                // MARK: -∆ ••••••••• [ ProfileHeaderView ] •••••••••
                ProfileHeaderView()
                
            }// ∆ END VStack
            
        }///||END__PARENT-SCROLLVIEW||
        .navigationTitle("@batman")
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

