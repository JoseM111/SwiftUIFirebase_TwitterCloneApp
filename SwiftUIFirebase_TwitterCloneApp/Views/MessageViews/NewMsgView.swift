import SwiftUI

// MARK: - Preview
struct NewMsgView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        NewMsgView(show: .constant(true), startChat: .constant(true))//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        .previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct NewMsgView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @State var searchText: String = ""
    @Binding var show: Bool
    @Binding var startChat: Bool
    //∆..............................
    
    ///∆ ............... Class Methods ...............
    
    
    var body: some View {
        
        //.............................
        ScrollView {
            
            // MARK: -∆ ••••••••• [ SearchBarComponent ] •••••••••
            SearchBarComponent(text: $searchText)
                .padding()
            
            //∆ ........... VStack ...........
            VStack(alignment: .leading) {
                
                ForEach(0..<12) { _ in
                    //∆..........
                    /// ∆ Needs a view in the for-each for the `.leading` to work
                    HStack { Spacer(minLength: 0) }
                    
                    // MARK: -∆ ••••••••• [ UserCellView ] BUTTON •••••••••
                    Button(action: {
                        //∆..........
                        show = false
                        startChat.toggle()
                        //∆..........
                    }) { UserCellComponent() }// ∆ END Button
                    //∆..........
                    
                }// ∆ END ForEach
                
            }// ∆ END VStack
            .padding(.leading)
            //∆ HANGER ™👕™ .................
            
        }///||END__PARENT-SCROLLVIEW||
        
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

