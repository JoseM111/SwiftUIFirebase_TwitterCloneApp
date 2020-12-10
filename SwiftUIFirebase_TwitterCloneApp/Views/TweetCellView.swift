import SwiftUI

// MARK: - Preview
struct TweetCellView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        TweetCellView()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        .previewLayout(.fixed(width: 440, height: 270))
    }
}

struct TweetCellView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    let bruceWayneStatusText = "It is not what i am underneath, but what i do that defines me."
    //∆..............................
    
    var body: some View {
        
        //.............................
        VStack(alignment: .leading) {
            
            ///∆ ........... PARENT HSTACK ...........
            HStack(alignment: .top, spacing: 12) {
                
                // MARK: -∆ ••••••••• [ CircleImageComponentView ] •••••••••
                CircleImageComponentView(imageName: "batman")
                
                // MARK: -∆ ••• Text that is right of the image(VStack) •••
                VStack(alignment: .leading, spacing: 4) {
                    
                    //∆ ........... HStack ...........
                    HStack {
                        
                        //∆ ........... Bruce Wayne Text ...........
                        Text("Bruce Wayne")
                            .font(.system(size: 14, weight: .semibold))
                        
                        //∆ ........... @batman ...........
                        Text("@batman •")
                            .foregroundColor(.gray)
                        Text("2w")
                            .foregroundColor(.gray)

                        
                    }// ∆ END HStack
                    
                    //∆ ........... BRUCE-WAYNE-STATUS-TEXT ...........
                    Text(bruceWayneStatusText)
                    
                    
                }// ∆ END VStack
                .fixedSize(horizontal: false, vertical: true)
                //∆ HANGER ™👕™ .................
                
            }/// ∆ END HStack
            .padding(.trailing)
            .padding(.bottom)
            //∆ HANGER ™👕™ .................
            
            HStack {
                
                Button("bubble.left") {
                    //∆..........
                    
                }
                .font(.system(size: 16))
                .frame(width: 32, height: 32)
                
                Spacer(minLength: 0) // Spaced Horizontally
                
                ///∆ ........... arrow.2.squarepath ...........
                Button("arrow.2.squarepath") {
                    //∆..........
                    
                    
                }
                .font(.system(size: 16))
                .frame(width: 32, height: 32)
                
                Spacer(minLength: 0) // Spaced Horizontally
                
                ///∆ ........... heart ...........
                Button("heart") {
                    //∆..........
                    
                    
                }
                .font(.system(size: 16))
                .frame(width: 32, height: 32)
                
                Spacer(minLength: 0) // Spaced Horizontally
                
                ///∆ ........... bookmark ...........
                Button("bookmark") {
                    //∆..........
                    
                    
                }
                
                
            }// ∆ END HStack
            .foregroundColor(.gray)
            .padding(.horizontal)
            //∆ HANGER ™👕™ .................
            
            // MARK: -∆ ••••••••• Adds a divider line •••••••••
            Divider()
            
        }///||END__PARENT-VSTACK||
        .padding(.leading, -16)
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
    ///∆ ............... Class Methods ...............
    
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

