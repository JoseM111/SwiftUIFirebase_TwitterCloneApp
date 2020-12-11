import SwiftUI

// MARK: -∂ Custom colors
extension Color {
    //__________
    static let netflixRed = Color(r: 229, g: 10, b: 21)
    static let twitterBlue = Color(r: 77, g: 159, b: 235)
    static let midGreen = Color(r: 59, g: 129, b: 37)
    static let lightBlue = Color(r: 91, g: 194, b: 244)
    static let lightBlue2 = Color(r: 193, g: 253, b: 251)
    static let lightBlack = Color(r: 33, g: 35, b: 37)
    static let skyPink = Color(r: 209, g: 165, b: 180)
    static let skyGray = Color(r: 226, g: 227, b: 221)
    static let neonOrange = Color(r: 232, g: 87, b: 43)
    static let neonYellow = Color(r: 247, g: 209, b: 71)
    static let lightPurple = Color(r: 161, g: 83, b: 205)
    static let darkPurple = Color(r: 60, g: 33, b: 119)
    static let darkBlue = Color(r: 51, g: 61, b: 126)
    
    /// ∆ Initializer
    /// <convenience> keyword can be left out because Initializers
    /// can call other initializers to perform part of an instance’s
    /// initialization. This process, known as initializer delegation,
    /// avoids duplicating code across multiple initializers.
    //∆.................................
    init(r: Double, g: Double, b: Double) {
        self.init(red: r/255, green: g/255, blue: b/255)
    }
    //∆.................................
}

/**©--------------------------------------------------------------©*/

// MARK: -∆ ••••••••• BEGINS [ Button Extensions ] •••••••••
extension Button where Label == Image {
    
    init(_ sf_iconName: String, completionWhenImage: @escaping () -> Void) {
        //∆..........
        self.init(action: completionWhenImage) {
            //∆..........
            Image(systemName: sf_iconName)
        }
    }
}

extension Button where Label == Text {
    
    init(_ textStr: String, completionWhenText: @escaping () -> Void) {
        //∆..........
        self.init(action: completionWhenText) {
            //∆..........
            Text(textStr)
        }
    }
}
// MARK: -∆ ••••••••• END [ Button Extensions ] •••••••••

/** [ HOW TO CALL ]
 arrayToStr(arrayName: "characterClass", array: characterClass)
 arrayToStr(array: characterClass) */
func arrayToStr(arrayName: String = "", array: [String]) -> Void {
    //__________
    let joined = array.joined(separator: " | ")
    arrayName == "" ? print("\(joined)") : print("\(arrayName): \(joined)")
}

// A generic closure, that prints 'Any' tye of object
var printf : (Any) -> Void = { arg in
    let myStr = """
                ••••••••••••••••••••••••••••••••••••••••••••••••••••
                «. \(arg)
                ••••••••••••••••••••••••••••••••••••••••••••••••••••
                """
    print(myStr)
}

// MARK: -∂ arrayToStr(): Prints out a formatted array
/** [ HOW TO CALL ]
 let publicName: String? = "Alias111"
 let publicAge: Int? = 20
 //∆..........
 unwrapWithGuard(strMsg: "Public Name:", unwrapMe: publicName)
 unwrapWithGuard(unwrapMe: publicAge) */
func unwrapWithGuard<T>(strMsg: String = "", unwrapMe: T?) -> Void {
    //∆..........
    guard let result = unwrapMe else { return print("∆- Could not unwrap optional") }
    /// ∆ - REPLACE CUSTOM `printf closure` with
    /// normal `print()` if `printf` is unvailable
    strMsg == "" ? print("∆- \(result)") : print("∆- \(strMsg): \(result)")
}

/** [ HOW TO CALL ]
 e.add.apply(to: 10, and: 7)
 e.sub.apply(to: 10, and: 7)
 e.mult.apply(to: 10, and: 7)
 e.div.apply(to: 10, and: 2) */
typealias e = ECalcOperation
enum ECalcOperation {
    case add, sub, mult, div
    
    func apply(to arg1: Int, and arg2: Int) -> Void {
        //∆..........
        switch self {
        case .add: print("*. \(arg1) + \(arg2) = \(arg1 + arg2)")
        case .sub: print("*. \(arg1) - \(arg2) = \(arg1 - arg2)")
        case .mult: print("*. \(arg1) * \(arg2) = \(arg1 * arg2)")
        case .div: print("*. \(arg1) / \(arg2) = \(arg1 / arg2)")
        }
    }
}

/** [ HOW TO CALL ]
 let url = "https//:Testing.com"
 print(url.asURL ?? "")
 -----<< OR >>-----
 guard let url = "https//:Testing.com".asURL else { return }
 print(url)
 */
extension String {
    var asURL: URL? {
        URL(string: self)
    }
}

extension Int {
    func toStr() -> String {
        String(self)
    }
}

extension Int {
    func toDouble() -> Double {
        Double(self)
    }
}

extension Double {
    func toInt() -> Int {
        Int(self)
    }
}

extension Int {
    func toCGFloat() -> CGFloat {
        CGFloat(self)
    }
}

// MARK: -∂ Provides a formatted currency in dollars "$123.44"
func currency(price: Double) -> String {
    //__________
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    /// # formatter.locale = NSLocale.currentLocale()
    /// # This is the defaultIn Swift 4, this ^ has
    /// # been renamed to simply NSLocale.current
    guard let result = formatter.string(from: NSNumber(value: price))
    else { return "" }
    
    return result
}

// MARK: -∂ Provides a formatted currency in dollars "$123.44"
// MARK: but NumberFormatter() is suggested to be used instead
func convertToCash(price: Double) -> String {
    //..........
    String(format: "$%.02f", price)
}

// MARK: -∂ A starter placeholder for anything you want
func myPlaceHolder(myStr: String) -> some View {
    Text("➡ \(myStr) 🎯!⬅")
        .font(.system(size: 22))
        .foregroundColor(.white)
        .bold()
        .background(Color.black)
}

// MARK: -∂ A function that handles 2d arrays
func extract2D(strMsg: String = "", index: Int, itemIndex: Int, _ array2D: [[String]]) {
    //__________
    let indexes = array2D[index][itemIndex]
    print("\(strMsg): \(indexes.description)")
}

@discardableResult func divT(_ str: String) -> String {
    let myStr = """
                •••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••
                                \(str)
                •••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••
                """
    print(myStr)
    return myStr
}

@discardableResult func logT<T>(str: String = "", _ obj_t: T) -> String {
    let myStr = str == ""
        ? """
          «. \(obj_t)
          …………………………………………………………………………………………………………………………………
          """
        : """
          «. \(str) \(obj_t)
          …………………………………………………………………………………………………………………………………
          """
    //∆..........
    print(myStr)
    return myStr
}

// Great place holder function kinda a phantom type
func undefined<T>(_ msg: String = "") -> T {
    fatalError("Undefined: \(msg)")
}

// Given a value to round and a factor to round to,
// round the value to the nearest multiple of that factor.
/*-------------------------------------------------------
 EXAMPLE USAGE:
 tipPctLabel.text =
 "Tip: \(roundTo(Double(tipPctSlider.value), toNearest: 0.20))"
 -------------------------------------------------------*/
func roundToPlace(value: Double, decimalPlaces: String = "%0.02f") -> Double {
    let result = String(format: decimalPlaces, value)
    return Double(result) ?? 0.0
}

// A closure, that Squares² a number. NOTE--! Has typealias
typealias numInNumOut = (Double) -> Double
var imASquare: numInNumOut = { numero  in
    
    let result = numero * numero
    print("| \(numero)² = \(roundToPlace(value: result))")
    
    return result
}

/** A function that filters numbers divisible by 2 */
func filterDiv2(args: [Int]) {
    let oddNums: [Int] = (args).filter { $0 % 2 == 0 }
    // Needs logT<--?
    logT(str: "Numbers divisible by '2': ", oddNums)
}

/** A function that filters numbers divisible by 3 */
func filterDiv3(args: [Int]) {
    let oddNums: [Int] = (args).filter { $0 % 3 == 0 }
    // needs logT<--?
    logT(str: "Numbers divisible by '3': ", oddNums)
}

/** A function that outputs the current date as: [Month Day, Year]
 In --> String format, not a date object
 but requires a singleton instance of date to be created */
@discardableResult func fixDate() -> String {
    let formatter = DateFormatter()
    let currentDate = Date()
    formatter.dateStyle = .medium
    let result = formatter.string(from: currentDate)
    return result
}

/** A function that multiplies an array of any size & any numeric type */
func multiplyList<Number: Numeric>(multiplier: Number, numbers: [Number]) {
    //__________
    let total = numbers.reduce(multiplier, *)
    print("1. count<Number: Numeric>: \(total)")
}

// MARK: ∆ ........... Date formatters[START] ...........
extension Date {
    
    /**
     Sets Formatting for out dates. Returns a String
     date.dateRightNow()// Apr 26, 2020<--Example
     ## Important Notes ##
     1. This extends a Date; so it is usable on all Date objects
     2. Currently Set to medium Date length
     */
    func dateRightNow() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: self)
    }
}

func formattedDate(timeInterval_dt: Double, dateFormattedStr: String) -> String {
    //∆..........
    let date = Date(timeIntervalSince1970: TimeInterval(timeInterval_dt))
    
    let dateFormatter = DateFormatter()
    /// ∆ dateFormatter.dateFormat = "E, d MMM" <- From: NSDateFormatter.com
    dateFormatter.dateFormat = dateFormattedStr
    
    return dateFormatter.string(from: date)
}


// Returns current date formatted, once a date object is passed
func currentDate(date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .none
    
    // US English Locale (en_US)
    dateFormatter.locale = Locale(identifier: "en_US")
    let todaysDate = dateFormatter.string(from: date)
    print(todaysDate)
    
    return todaysDate
}
// MARK: ∆ ........... Date formatters[END] ...........

/** A function that only returns even numbers */
func evenNums(num1: Int, num2: Int) {
    let oddNums: [Int] = (num1 ... num2).filter { $0 % 2 == 0 }
    logT(str: "Even number", oddNums)
}

/** A function that only returns odd numbers */
func oddNums(num1: Int, num2: Int) {
    let oddNums: [Int] = (num1 ... num2).filter { $0 % 3 == 0 }
    logT(str: "Odd number", oddNums)
}

/*©-----------------------------------------©*/

/**©------------------------------------------------------------------------------©*/

/** `Header->Sub-Header-Description`:
 ••••••••••••••••••••••••••••••••••••••••••••••••••••••••••
 `Comment`:
 • Structs components for headers
 ••••••••••••••••••••••••••••••••••••••••••••••••••••••••••
 */
struct HeaderView: View {
    //∆..........
    var title = "Title"
    var subtitle = "Subtitle"
    var desc = "Use this to..."
    var backGround = Color.orange
    var textColor = Color.black
    
    init(_ title: String, subtitle: String, desc: String,
         backGround: Color = Color.orange, textColor: Color = Color.black) {
        //∆..........
        self.title = title
        self.subtitle = subtitle
        self.desc = desc
        self.backGround = backGround
        self.textColor = textColor
    }
    
    var body: some View {
        
        VStack(spacing: 15) {
            
            title != ""
                ? Text(title)
                .font(.largeTitle)
                ///∆ ...........
                ///  • During the layout of the view hierarchy, each view proposes
                ///    a size to each child view it contains. If the child view
                ///    doesn’t need a fixed size it can accept and conform
                ///     to the size offered by the parent.
                ///
                ///  • For example, a Text view placed in an explicitly
                ///    sized frame wraps and truncates its string to
                ///    remain within its parent’s bounds
                ///  ............
                : Text(title)
            
            Text(subtitle)
                .bold()
                .foregroundColor(.gray)
                .font(.system(size: 25))
            
            
            DescView(desc, backGround: backGround, textColor: textColor)
        }
    }
    
    static internal func inputFieldComponent(
        inputTypeStr: String,
        bindindInstanceStr: Binding<String>,
        bgColor: Color = Color.clear) -> some View {
        //∆..........
        return TextField(inputTypeStr, text: bindindInstanceStr)
            .frame(width: 360, height: 50, alignment: .center)
            .padding(.leading)
            .background(bgColor)
            .cornerRadius(12)
    }
}

struct DescView: View {
    //∆..........
    var desc = "Use this to..."
    var backGround = Color.orange
    var textColor = Color.black
    
    init(_ desc: String, backGround: Color = .orange, textColor: Color = .black) {
        self.desc = desc
        self.backGround = backGround
        self.textColor = textColor
    }
    
    var body: some View {
        Text(desc)
            .bold()
            .frame(maxWidth: .infinity)
            .padding()
            .background(backGround)
            .foregroundColor(textColor)
    }
}

/** `Templates`:
 ••••••••••••••••••••••••••••••••••••••••••••••••••••••••••
 `"COMMENTS"`:
 • TitleText
 • SubTitleText
 • BannerText
 ••••••••••••••••••••••••••••••••••••••••••••••••••••••••••
 */
struct TitleViewComponent: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    var title = ""
    //∆..............................
    
    var body: some View {
        
        Text(title)
            .font(.largeTitle)
    }
    
    ///∆ ........... Initializer ...........
    init(_ title: String) {
        //∆..........
        self.title = title
    }
}/// ∆ END TITLEVIEWCOMPONENT

struct SubtitleViewComponent: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    var subtitle = ""
    //∆..............................
    
    var body: some View {
        
        Text(subtitle)
            .bold()
            .foregroundColor(.gray)
            .font(.system(size: 25))
    }
    
    ///∆ ........... Initializer ...........
    init(_ subtitle: String) {
        //∆..........
        self.subtitle = subtitle
    }
    
}/// ∆ END SUBTITLEVIEWCOMPONENT

import SwiftUI

struct P_TagViewComponent: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    var text: String
    var bgColor, textColor: Color
    //∆..............................
    
    var body: some View {
        
        Text(text)
            .bold()
            ///∆ ...........
            ///  • During the layout of the view hierarchy, each view proposes
            ///    a size to each child view it contains. If the child view
            ///    doesn’t need a fixed size it can accept and conform
            ///     to the size offered by the parent.
            ///
            ///  • For example, a Text view placed in an explicitly
            ///    sized frame wraps and truncates its string to
            ///    remain within its parent’s bounds
            ///  ............
            .fixedSize(horizontal: false, vertical: true)
            .frame(maxWidth: .infinity)
            .padding()
            .background(bgColor)
            .foregroundColor(textColor)
    }
    
    ///∆ ........... Initializer ...........
    internal init(_ text: String, bgColor: Color = .orange, textColor: Color = .primary) {
        self.text = text
        self.bgColor = bgColor
        self.textColor = textColor
    }
    
}
















