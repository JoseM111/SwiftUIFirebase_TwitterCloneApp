import SwiftUI

struct UIStyleButtonComponentView: View {
    // MARK: - ©PROPERTIES
    //∆..............................
    var sfSymbolName: String
    var rotationAngle: Double = 0
    var width: CGFloat = 20
    var height: CGFloat = 20
    var fontSize: CGFloat = 20
    var fontWeight: Font.Weight = .regular
    var fgColor: Color = .lightBlack
    var typeOfPadding: Edge.Set = .trailing
    //∆..............................
    
    //∆.....................................................
    var body: some View {
        //∆..........
        Image(systemName: sfSymbolName)
            .resizable()
            .rotationEffect(Angle(degrees: rotationAngle))
            .scaledToFit()
            .frame(width: width, height: height)
            .font(.system(size: fontSize, weight: fontWeight))
            .foregroundColor(fgColor)
            .padding(typeOfPadding)
        //∆..........
    }
}
