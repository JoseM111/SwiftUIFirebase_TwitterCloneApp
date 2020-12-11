import SwiftUI

// MARK: - Preview
struct SearchView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        SearchView()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        .previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct SearchView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @State var searchText: String = ""
    //∆..............................
    
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
                    UserCellView()
                }// ∆ END ForEach
                
            }// ∆ END VStack
            .padding(.leading)
            //∆ HANGER ™👕™ .................
            
        }///||END__PARENT-SCROLLVIEW||
        
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
    ///∆ ............... Class Methods ...............
    
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

