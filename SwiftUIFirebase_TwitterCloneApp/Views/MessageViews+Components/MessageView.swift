import SwiftUI

// MARK: - Preview
struct MessageView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        MessageView(msg: MOCK_MESSAGES[0])
        //.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        .previewLayout(.fixed(width: 440, height: 270))
    }
}

struct MessageView: View {
    // MARK: - ©PROPERTIES
    //∆..............................
    let msg: MockMessage
    //∆..............................
    
    //∆.....................................................
    var body: some View {
        HStack {
            
            if msg.isCurrentUser {
                //∆..........
                
                Spacer(minLength: 0) // Spaced Vertically
                
                Text(msg.msgText)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(ChatBubbleComponent(msgIsFromUser: true))
                    .padding(.horizontal)
            } else {
                //∆..........
                HStack(alignment: .bottom) {
                    
                    Image(msg.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                    Text(msg.msgText)
                        .padding()
                        .background(Color(.systemGray5))
                        .foregroundColor(.black)
                        .clipShape(ChatBubbleComponent(msgIsFromUser: false))
                    
                }// ∆ END HStack
                .padding(.horizontal)
                //∆ HANGER ™👕™ .................
            }// ∆ END if-staement
        }/// ∆ END HStack
    }
}
