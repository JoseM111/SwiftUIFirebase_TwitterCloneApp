import SwiftUI

enum TweetFilterOptionEnum: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    ///∆ ........... Computed Property ...........
    var title: String {
        //∆..........
        switch self {
            //∆..........
        case .tweets: return "Tweets"
        case .replies: return "Tweets & Replies"
        case .likes: return "Likes"
        }
    }
}
