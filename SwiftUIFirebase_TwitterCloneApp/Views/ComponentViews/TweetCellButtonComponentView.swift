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

extension Button where Label == Image {
    
    init(_ sf_iconName: String, completionHandler: @escaping () -> Void) {
        //∆..........
        self.init(action: completionHandler) {
            //∆..........
            Image(systemName: sf_iconName)
        }
    }
}

