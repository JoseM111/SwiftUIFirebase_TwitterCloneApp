import SwiftUI

// MARK: - Preview
struct TextAreaComponent_Previews: PreviewProvider {
    
    static var previews: some View {
        
        TextAreaComponent(text: .constant(""), "Placeholder...")
        //.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct TextAreaComponent: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @Binding var text: String
    let placeHolder: String
    //∆..............................
    
    /// ∆ Initializer
    //∆.................................
    init(text: Binding<String>, _ placeHolder: String) {
        //∆..........
        self._text = text
        self.placeHolder = placeHolder
        UITextView.appearance().backgroundColor = .clear
    }
    //∆.................................
    
    ///∆ ............... Class Methods ...............
    
    
    var body: some View {
        
        //.............................
        ZStack(alignment: .topLeading) {
            
            if text.isEmpty {
                
                Text(placeHolder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
            
            TextEditor(text: $text)
                .padding(4)
            
        }///||END__PARENT-ZSTACK||
        .font(.body)
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

