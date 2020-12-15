import SwiftUI

// MARK: - Preview
struct CustomTextFieldComponent_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CustomTextFieldComponent(text: .constant("Placeholder"),
                                 placeholder: Text("Email"), sfImageName: "envelope")//.padding(.all, 100)
        .preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        .previewLayout(.fixed(width: 440, height: 270))
    }
}

struct CustomTextFieldComponent: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @Binding var text: String
    let placeholder: Text
    let sfImageName: String
    //∆..............................
    
    ///∆ ............... Class Methods ...............
    
    
    var body: some View {
        
        //.............................
        ZStack(alignment: .leading) {
            
            if text.isEmpty {
                
                placeholder
                    .foregroundColor(Color(.init(white: 1, alpha: 0.87)))
                    .padding(.leading, 40)
            }
            
            ///∆ ........... [ HSTACK ] ...........
            HStack(spacing: 16) {
                
                // MARK: -∆ ••••••••• [ SFSYMBOL-ENVELOPE ] •••••••••
                Image(systemName: sfImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                
                // MARK: -∆ ••••••••• [ TEXTFIELD ] •••••••••
                TextField("", text: $text)
                
            }// ∆ END HStack
            
            //∆ HANGER ™👕™ .................
            
        }///||END__PARENT-ZSTACK||
        .padding()
        /// ∆ Color(.init(white: 1, alpha: 0.15):
        /// Provides a lighter background like frame
        /// & sort of bleeds into the original
        /// background with a custom opacity
        .background(Color(.init(white: 1, alpha: 0.15)))
        .cornerRadius(10)
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

