import SwiftUI

// MARK: - Preview
struct ConvoCellComponent_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ConvoCellComponent()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct ConvoCellComponent: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    
    //∆..............................
    
    var body: some View {
        
        //.............................
        VStack {
            
            HStack(spacing: 12) {
                
                CircleImageComponent(imageName: "venom-10")
                
                //∆ ........... VStack ...........
                VStack(alignment: .leading, spacing: 4) {
                    
                    Text("@venom")
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("Longer message text to see what happens if i write a ver long message")
                        .font(.system(size: 15))
                        .fixedSize(horizontal: false, vertical: true)
                }// ∆ END VStack
                
                //∆ HANGER ™👕™ .................
                
            }// ∆ END HStack
            .padding(.trailing)
            //∆ HANGER ™👕™ .................
            
            Divider()
            
        }///||END__PARENT-VSTACK||
        
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
    ///∆ ............... Class Methods ...............
    
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

