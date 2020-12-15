import SwiftUI

// MARK: - Preview
struct ChatBubbleView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ChatBubbleComponent(msgIsFromUser: true)
            .frame(width: 220, height: 100)
            .previewLayout(.fixed(width: 440, height: 270))
            //.padding(.all, 100)
            //.preferredColorScheme(.dark)
            //.previewLayout(.sizeThatFits)
            //.previewLayout(.fixed(width: 360, height: 720))
    }
}

struct ChatBubbleComponent: Shape {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    var msgIsFromUser: Bool
    //∆..............................
    
    func path(in rect: CGRect) -> Path {
        //∆..........
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: [
                .topLeft, .topRight,
                msgIsFromUser ? .bottomLeft : .bottomRight
            ],
            cornerRadii: CGSize(width: 16, height: 16))
        
        let cgPath = Path(path.cgPath)
        
        return cgPath
    }
    /*©-----------------------------------------©*/
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

