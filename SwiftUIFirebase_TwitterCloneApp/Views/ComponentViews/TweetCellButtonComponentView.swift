import SwiftUI

struct TweetCellBtnComponent: View {
    // MARK: - ©PROPERTIES
    //∆..............................
    let sfImageName: String
    var actionCompletionHandler: (() -> Void)
    //∆..............................
    
    //∆.....................................................
    var body: some View {
        
        ///∆ ............... Button ...............
        Button(sfImageName, completionWhenImage: actionCompletionHandler)
            .font(.system(size: 16))
            .frame(width: 32, height: 32)
    }
}

