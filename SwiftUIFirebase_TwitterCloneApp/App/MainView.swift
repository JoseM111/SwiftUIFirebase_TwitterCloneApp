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
    
    //∆..............................
    
    var body: some View {
        
        //.............................
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
                FeedView()
                     .tabItem {
                         //∆..........
                         Image(systemName: "envelope")
                         Text("Messages")
                     }
            }// ∆ END TabView
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            //∆ HANGER ™👕™ .................
            
        }///||END__PARENT-NavigationView||
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
