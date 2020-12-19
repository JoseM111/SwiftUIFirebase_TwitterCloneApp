import SwiftUI


class SearchViewModel: ObservableObject {
    // MARK: - @PROPERTIES
    //∆..............................
    @Published var users: [UserModel] = []
    //∆..............................
    
    ///∆ ........... Initializer ...........
    init() {
        fetchUsers()
    }
    
    ///∆ ........... Class Methods ...........
    func fetchUsers() {
        //∆..........
        COLLECTION_USERS_FIRESTORE.getDocuments { snapShot, _ in
            //∆..........
            guard let documents = snapShot?.documents else { return }
            
            /// ∆ Maps through all of the data in our documents array
            self.users = documents.map({ UserModel(dictionary: $0.data()) })
            
//            print("DEBUG-> USERS-ARRAY: \(self.users)")
        }
    }
}
