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
        VStack {
            
            SearchBarComponentView(text: $searchText)
            
        }///||END__PARENT-VSTACK||
        
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
    ///∆ ............... Class Methods ...............
    
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

