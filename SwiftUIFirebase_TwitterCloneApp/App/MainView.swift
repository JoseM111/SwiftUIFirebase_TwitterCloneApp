import SwiftUI

// MARK: - Preview
struct MainView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        MainView()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 320, height: 640))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct MainView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @EnvironmentObject var authViewModel: AuthViewModel
    //∆..............................
    
    var body: some View {
        
        //.............................
        Group {
            ///∆ ...........
            ///  • If the user is logged in show the main view with tabs
            ///    else show the login in screen
            ///  ............
            if authViewModel.userSession != nil {
                //∆..........
                NavigationView {
                    
                    // MARK: -∆ ••••••••• [ Tabs At the bottom ] •••••••••
                    TabView {
                        
                        //∆ ........... Home ...........
                       FeedView()
                            .tabItem {
                                //∆..........
                                Image(systemName: "house")
                                Text("Home")
                            }
                        //∆ ........... Search ...........
                        SearchView()
                             .tabItem {
                                 //∆..........
                                 Image(systemName: "magnifyingglass")
                                 Text("Search")
                             }
                        //∆ ........... Message ...........
                        ConversationsView()
                             .tabItem {
                                 //∆..........
                                 Image(systemName: "envelope")
                                 Text("Messages")
                             }
                    }// ∆ END TabView
                    .navigationBarTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    //∆ HANGER ™👕™ .................
                }// MARK: END--> NavigationView

            } else { LoginView() }// MARK: END--> if-else
        }// MARK: -∆ ||END__PARENT-Group||
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
    ///∆ ............... Class Methods ...............
    
    
}// END: [STRUCT]

/*©-----------------------------------------©*/
// MARK: Helper Function
func iAmHere(myStr: String) -> some View {
    return Text("\(myStr)")
        .font(.system(size: 22))
        .foregroundColor(.white)
        .bold()
        .background(Color.black)
}
