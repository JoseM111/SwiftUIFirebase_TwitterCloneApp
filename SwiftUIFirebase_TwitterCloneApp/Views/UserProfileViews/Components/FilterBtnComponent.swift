import SwiftUI

// MARK: - Preview
struct FilterBtnComponent_Previews: PreviewProvider {
    
    static var previews: some View {
        
        FilterBtnComponent(selectedOption: .constant(.likes))//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        .previewLayout(.fixed(width: 440, height: 270))
    }
}

struct FilterBtnComponent: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    typealias option = TweetFilterOptionEnum
    @Binding var selectedOption: TweetFilterOptionEnum
    
    private let underlineWidth = {
        //∆..........
        UIScreen.main.bounds.width / CGFloat(option.allCases.count)
    }()
    
    private let extraPadding: CGFloat = 16
    
    private var tweetUnderlinePadding: CGFloat {
        //∆..........
        let rawValue: CGFloat = .init(selectedOption.rawValue)
        let count: CGFloat = .init(option.allCases.count)
        let mathLogic: CGFloat = .init(UIScreen.main.bounds.width / count * rawValue)

        let result: CGFloat = mathLogic + extraPadding// extraPadding = 16
        return result
    }
    //∆..............................
    
    ///∆ ............... Class Methods ...............
    
    
    var body: some View {
        
        //.............................
        VStack(alignment: .leading) {
            
            ///∆ ........... HSTACK ...........
            HStack {
                
                ForEach(option.allCases, id: \.self) { selected in
                    
                    // MARK: -∆ ••••••••• [ Enum Options ] •••••••••
                    Button(action: { selectedOption = selected }) {
                        //∆..... LABEL .....
                        Text(selected.title)
                            .frame(width: underlineWidth - 8)
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.twitterBlue2)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    .animation(.spring())
                }// ∆ END ForEach
                
            }// ∆ END HStack
            
            // MARK: -∆ ••••••••• [ Underline ] •••••••••
            Rectangle()
                .frame(width: underlineWidth - 32, height: 3, alignment: .center)
                .foregroundColor(.blue)
                .padding(.leading, tweetUnderlinePadding)
                .animation(.spring())
            
        }///||END__PARENT-VSTACK||
        .padding()
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

