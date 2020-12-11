import SwiftUI

// MARK: - Preview
struct MsgInputView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        MsgInputView(msgtext: .constant(""))//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        .previewLayout(.fixed(width: 440, height: 270))
    }
}

struct MsgInputView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @Binding var msgtext: String
    //∆..............................
    
    var body: some View {
        
        //.............................
        HStack {
            
            TextField("message", text: $msgtext)
                .textFieldStyle(PlainTextFieldStyle())
                .frame(minHeight: 30)
            
            Button("Send", completionWhenText: {
                //∆..........
                
            })
            
        }///||END__PARENT-HSTACK||
        
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
    ///∆ ............... Class Methods ...............
    
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

