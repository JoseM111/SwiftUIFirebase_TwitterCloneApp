import SwiftUI

struct UserProfileView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @State var selectedFilterOption: TweetFilterOptionEnum = .tweets
    let user: UserModel
    @ObservedObject var profileVM: ProfileViewModel
    //∆..............................
    
    // MARK: -∆ Initializer
    ///∆.................................
    init(user: UserModel) {
        self.user = user
        self.profileVM = ProfileViewModel(user: user)
    }
    ///∆.................................
    
    
    var body: some View {
        
        //.............................
        ScrollView {
            
            VStack {
                
                // MARK: -∆ ••••••••• [ ProfileHeaderView ] •••••••••
                ProfileHeaderView(isFollowed: $profileVM.isFollowed, profileVM: profileVM)
                
                // MARK: -∆ ••••••••• [  ] •••••••••
                FilterBtnComponent(selectedOption: $selectedFilterOption)
                
                ForEach(0..<9) { tweet in
                    //∆..........
                    TweetCellComponent()
                        .padding(.top, 8)
                        .padding(.leading)
                        .padding(.trailing, 8)
                }
                
            }// ∆ END VStack
            
        }///||END__PARENT-SCROLLVIEW||
        .navigationTitle("@batman")
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

