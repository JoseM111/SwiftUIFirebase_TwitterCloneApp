import SwiftUI

// MARK: - Preview
struct ChatView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ChatView()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct ChatView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @State var msgText: String = ""
    //∆..............................
    
    var body: some View {
        
        //.............................
        VStack {
            
            //∆ ........... [ ScrollView ] ...........
            ScrollView {
                
                //∆ ........... [ VStack ] ...........
                VStack(alignment: .leading, spacing: 12) {
                    
                    ForEach(MOCK_MESSAGES) { msg in
                        //∆..........
                        // MARK: ©[ MessageView ]
                        MessageView(msg: msg)
                        //∆..........
                    }// ∆ END ForEach
                    
                }// ∆ END VStack
                
            }// ∆ END ScrollView
            .padding(.top)
            //∆ HANGER ™👕™ .................
            
            // MARK: -∆ ••••••••• [ Message-Input-View ] •••••••••
            MsgInputView(msgtext: $msgText)
                .padding()
            
        }///||END__PARENT-VSTACK||
        
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
    ///∆ ............... Class Methods ...............
    
    
}// END: [STRUCT]

/*©-----------------------------------------©*/
