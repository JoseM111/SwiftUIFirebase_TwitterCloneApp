import SwiftUI

class ProfileViewModel: ObservableObject {
    // MARK: - @PROPERTIES
    //∆..............................
    @Published var isFollowed: Bool = false
    let user: UserModel
    //∆..............................
    
    // MARK: -∆ Initializer
    ///∆.................................
    init(user: UserModel) {
        self.user = user
        /// ∆ Will persist if following or not even when you close the app
        checkIfUserIsFollowed()
    }
    ///∆.................................
    
    ///∆ ........... Class Methods ...........
    
    // MARK: -∆  follow •••••••••
    func follow() -> Void {
        //∆..........
        /// ∆ The current user logged in ID
        guard let currentUid = FIREBASE_AUTH.currentUser?.uid else { return }
        let followingRef = COLLECTION_FOLLOWING_FIRESTORE.document(currentUid).collection("user-following")
        let followersRef = COLLECTION_FOLLOWERS_FIRESTORE.document(currentUid).collection("user-followers")
        
        /// ∆ Updates the following structure when following someone
        followingRef.document(user.id).setData([ : ]) { _ in
            //∆..........
            /// ∆ Updates the followers structure when following someone with the currentUid
            followersRef.document(currentUid).setData([ : ]) { _ in
                //∆..........
                self.isFollowed = true
                print("DEBUG: Followed: @\(self.user.username)...")
            }
        }
    }/// ∆ END OF: follow
    
    // MARK: -∆  unFollow •••••••••
    func unFollow() -> Void {
        //∆..........
        /// ∆ The current user logged in ID
        guard let currentUid = FIREBASE_AUTH.currentUser?.uid else { return }
        let followingRef = COLLECTION_FOLLOWING_FIRESTORE.document(currentUid).collection("user-following")
        let followersRef = COLLECTION_FOLLOWERS_FIRESTORE.document(currentUid).collection("user-followers")
        
        followingRef.document(user.id).delete { _ in
            //∆..........
            followersRef.document(currentUid).delete { _ in
                //∆..........
                self.isFollowed = false
                print("DEBUG: UnFollowed: @\(self.user.username)...")
            }
        }
    }/// ∆ END OF: unFollow
}
//∆.....................................................

extension ProfileViewModel {
    
    // MARK: -∆  checkIfUserIsFollowed •••••••••
    func checkIfUserIsFollowed() -> Void {
        //∆..........
        guard let currentUid = FIREBASE_AUTH.currentUser?.uid else { return }
        let followingRef = COLLECTION_FOLLOWING_FIRESTORE.document(currentUid).collection("user-following")
        
        followingRef.document(user.id).getDocument { snapShot, _ in
            //∆..........
            guard let isFollowed = snapShot?.exists else { return }
            self.isFollowed = isFollowed
        }
    }
}
