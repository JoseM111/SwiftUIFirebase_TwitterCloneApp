import SwiftUI

struct MockMessage: Identifiable {
    // MARK: - ∆@PROPERTIES
    //∆..............................
    var id: Int
    let imageName: String
    let msgText: String
    let isCurrentUser: Bool
    //∆..............................
    
    //∆.....................................................
    
}

let MOCK_MESSAGES: [MockMessage] = [
    //∆..........
    .init(id: 0, imageName: "spiderman",
          msgText: "Hey what's up?",
          isCurrentUser: false),
    //∆..........
    .init(id: 1, imageName: "batman",
          msgText: "Not much, you?",
          isCurrentUser: true),
    //∆..........
    .init(id: 2, imageName: "batman",
          msgText: "How's the marvel universe?",
          isCurrentUser: true),
    //∆..........
    .init(id: 3, imageName: "spiderman",
          msgText: "It's pretty good dude",
          isCurrentUser: false),
    //∆..........
    .init(id: 4, imageName: "spiderman",
          msgText: "How's your battle with the Joker?",
          isCurrentUser: false),
    //∆..........
    .init(id: 5, imageName: "batman",
          msgText: "Not going so hot..",
          isCurrentUser: true),
    //∆..........
]
