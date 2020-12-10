import SwiftUI

// MARK: - Preview
struct SearchBarComponentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ///  • With `Binding<String>` variables you can do: .constant("Enter preferred text")
        SearchBarComponentView(text: .constant("Search..."))//.padding(.all, 100)
            .preferredColorScheme(.dark)
            //.previewLayout(.sizeThatFits)
            //.previewLayout(.fixed(width: 360, height: 720))
            // The preview below is for like a card
            .previewLayout(.fixed(width: 440, height: 270))
    }
}

struct SearchBarComponentView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @Binding var text: String
    //∆..............................
    
    var body: some View {
        
        //.............................
        HStack {
            
            TextField("Search...", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                // MARK: - overlay
                //--|............................................
                .overlay(
                    //∆..........
                    HStack {
                        
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                    }
                )
                //--|............................................
            
            
        }///||END__PARENT-HSTACK||
        .padding(.horizontal, 10)
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
    ///∆ ............... Class Methods ...............
    
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

