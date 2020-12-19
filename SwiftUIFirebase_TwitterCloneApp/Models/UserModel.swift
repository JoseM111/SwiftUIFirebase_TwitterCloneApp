import SwiftUI

struct UserModel: Identifiable {
    // MARK: - ∆@PROPERTIES
    //∆..............................
    var id = UUID().uuidString
    let username: String
    let profileImageURL: String
    let fullname: String
    let email: String
    //∆..............................
    
    //∆.....................................................
    
    ///∆ ........... Initializer ...........
    init(dictionary: [String : Any]) {
        typealias k = RegistrationKeys
        //∆..........
        id = dictionary[k.uidKey] as? String ?? ""
        username = dictionary[k.usernameKey] as? String ?? ""
        profileImageURL = dictionary[k.profileImageURLKey] as? String ?? ""
        fullname = dictionary[k.fullnameKey] as? String ?? ""
        email = dictionary[k.emailKey] as? String ?? ""
    }
}

