import SwiftUI

struct TweetCellButtonComponentView: View {
    // MARK: - ©PROPERTIES
    //∆..............................
    var actionCompletionHandler: (() -> Void)
    let sfImageName: String
    //∆..............................
    
    //∆.....................................................
    var body: some View {
        
        ///∆ ............... Button ...............
        Button(action: actionCompletionHandler) {
            //∆..... LABEL .....
            Image(systemName: sfImageName)
                .font(.system(size: 16))
                .frame(width: 32, height: 32)
        }
    }
}

