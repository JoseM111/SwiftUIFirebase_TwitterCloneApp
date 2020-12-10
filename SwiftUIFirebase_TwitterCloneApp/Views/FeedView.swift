import SwiftUI

// MARK: - Preview
struct FeedView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        FeedView()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        .previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct FeedView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    
    //∆..............................
    
    var body: some View {
        
        //.............................
        ZStack(alignment: .bottomTrailing) {
            
            // MARK: -∆ ••••••••• [ ScrollView ] •••••••••
            ScrollView {
                ///∆ ...........
                ///  • Will Automatically fill up all of the space
                ///    in the view which will initialize `bottomTrailing`
                ///    modifier being used in the `ZStack` & the button
                ///    will move to the bottom right corner
                ///  ............
                
                //∆ ........... [LazyVStack] ...........
                VStack {
                    
                    ForEach(0..<9, id: \.self) { _ in
                        //∆..........
                        TweetCellView()
                        
                        
                    }// ∆ END ForEach
                    
                    //∆ HANGER ™👕™ .................
                    
                }// ∆ END VStack
                .padding()
                //∆ HANGER ™👕™ .................
                
            }
            
            // MARK: -∆ ••••••••• [ Bottom Right Button ] •••••••••
            Button(action: {
                //∆..........
                
                
            }) {
                //∆..... LABEL .....
                Image("tweet")
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding()
                
            }
            .background(Color.twitterBlue)
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            //∆ HANGER ™👕™ .................
            
        }///||END__PARENT-ZSTACK||
        
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
    ///∆ ............... Class Methods ...............
    
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

