import SwiftUI

struct BackBtnComponent: View {
    // MARK: - ©PROPERTIES
    //∆..............................
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    let text: String
    //∆..............................
    
    ///∆ ............... Class Methods ...............
    
    
    //∆.....................................................
    var body: some View {
        Button(action: { mode.wrappedValue.dismiss() }) {
            //∆..... LABEL .....
            ///∆ ........... [ HStack ] ...........
            HStack {
                
                Text(text)
                    .font(.system(size: 14))
                
                Text("Sign In")
                    .font(.system(size: 14, weight: .semibold))
                
            }// ∆ END HStack
            .foregroundColor(.white)
            .padding(.bottom, 40)
            
            //∆ HANGER ™👕™ .................
        }
    }
}

