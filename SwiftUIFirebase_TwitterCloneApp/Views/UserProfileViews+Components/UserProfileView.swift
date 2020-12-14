import SwiftUI

// MARK: - Preview
struct UserProfileView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        UserProfileView()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct UserProfileView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @State var selectedFilterOption: TweetFilterOptionEnum = .tweets
    //∆..............................
    
    ///∆ ............... Class Methods ...............
    
    
    var body: some View {
        
        //.............................
        ScrollView {
            
            VStack {
                
                // MARK: -∆ ••••••••• [ ProfileHeaderView ] •••••••••
                ProfileHeaderView()
                
                // MARK: -∆ ••••••••• [  ] •••••••••
                FilterBtnComponent(selectedOption: $selectedFilterOption)
                
                ForEach(0..<9) { tweet in
                    //∆..........
                    TweetCellComponent()
                        .padding(.leading)
                        .padding(.trailing, 8)
                }
                
            }// ∆ END VStack
            
        }///||END__PARENT-SCROLLVIEW||
        .navigationTitle("@batman")
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

