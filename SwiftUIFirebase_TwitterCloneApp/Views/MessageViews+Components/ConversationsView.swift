import SwiftUI

// MARK: - Preview
struct ConversationsView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ConversationsView()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        .previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct ConversationsView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @State var isShowingNewMsgView: Bool = false
    @State var showChat: Bool = false
    //∆..............................
    
    var body: some View {
        
        //.............................
        ZStack(alignment: .bottomTrailing) {
            
            NavigationLink(
                destination: ChatView(),
                isActive: $showChat,
                label: {
                    /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
                })
            
            // MARK: -∆ ••••••••• [ ScrollView ] •••••••••
            ScrollView {
                ///∆ ...........
                ///  • Will Automatically fill up all of the space
                ///    in the view which will initialize `bottomTrailing`
                ///    modifier being used in the `ZStack` & the button
                ///    will move to the bottom right corner
                ///  ............
                
                //∆ ........... [LazyVStack] ...........
                VStack(alignment: .leading) {
                    
                    ForEach(0..<20) { _ in
                        //∆..........
                        NavigationLink(
                            destination: ChatView(),
                            label: {
                                ConvoCellComponent()
                            })
                    }// ∆ END ForEach
                    
                    //∆ HANGER ™👕™ .................
                    
                }// ∆ END VStack
                .padding()
                //∆ HANGER ™👕™ .................
            }// ∆ END ScrollView
            
            // MARK: -∆ ••••••••• [ Bottom Right Button ] •••••••••
            Button(action: { isShowingNewMsgView.toggle() }) {
                //∆..... LABEL .....
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding()
                
            }
            .background(Color.twitterBlue)
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            // MARK: - sheet
            //--|............................................
            .sheet(isPresented: $isShowingNewMsgView, content: {
                //∆..........
                NewMsgView(show: $isShowingNewMsgView, startChat: $showChat)
            })
            //--|............................................
            
            //∆ HANGER ™👕™ .................
            
        }///||END__PARENT-ZSTACK||

        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
    ///∆ ............... Class Methods ...............
    
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

