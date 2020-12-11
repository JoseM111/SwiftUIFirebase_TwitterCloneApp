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
        Button(sfImageName, completionHandler: actionCompletionHandler)
            .font(.system(size: 16))
            .frame(width: 32, height: 32)
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

