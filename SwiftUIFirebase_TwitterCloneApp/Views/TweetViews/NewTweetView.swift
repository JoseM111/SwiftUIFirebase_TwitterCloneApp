import SwiftUI

// MARK: - Preview
struct NewTweetView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        NewTweetView(isPresented: .constant(true))//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct NewTweetView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @Binding var isPresented: Bool
    @State var captionText: String = ""
    let placeHolderText: String = "Whats happening..."
    //∆..............................
    
    ///∆ ............... Class Methods ...............
    
    
    var body: some View {
        
        //.............................
        NavigationView {
            
            ///∆ ........... VSTACK ...........
            VStack {
                
                HStack(alignment: .top) {
                    
                    // MARK: -∆ ••••••••• [ Profile Image ] •••••••••
                    Image("batman")
                        .circleImageFrame(
                            aspectR: .fill,
                            frameW: 64,
                            frameH: 64)
                        .shadow(color: Color.black.opacity(0.55), radius: 10, x: 0.0, y: 0.0)
                    
                    TextAreaComponent(text: $captionText, placeHolderText)
                    
                    Spacer(minLength: 0) // Spaced Horizontally
                }// ∆ END HStack
                .padding()
                // MARK: - navigationBarItems
                //--|............................................
                .navigationBarItems(
                    leading: Button(action: { isPresented.toggle() }) {
                        //∆..... LABEL .....
                        Text("Cancel")
                    },
                    trailing: Button(action: {  }) {
                        //∆..... LABEL .....
                        Text("Tweet")
                            .modifier(ButtonCustomFrame(
                                        bgColor: .blue,
                                        frameWidth: 90,
                                        frameHeight: 35))
                        
                })// ∆ END navigationBarItems
                //--|............................................

                Spacer(minLength: 0) // Spaced Vertically

            }// ∆ END VStack
            //∆ HANGER ™👕™ .................
            
        }///||END__PARENT-NAVIGATIONVIEW||
        
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

