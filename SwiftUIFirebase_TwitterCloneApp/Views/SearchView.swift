import SwiftUI

// MARK: - Preview
struct SearchView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        SearchView()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        .previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct SearchView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @State var searchText: String = ""
    @ObservedObject var searchViewModel = SearchViewModel()
    //∆..............................
    
    var body: some View {
        
        //.............................
        ScrollView {
            
            // MARK: -∆ ••••••••• [ SearchBarComponent ] •••••••••
            SearchBarComponent(text: $searchText)
                .padding()
            
            //∆ ........... VStack ...........
            VStack(alignment: .leading) {
                
                ForEach(searchViewModel.users) { user in
                    //∆..........
                    HStack { Spacer() }
                    
                    // MARK: -∆ Navigates to our UserProfileView
                    NavigationLink(
                        destination: UserProfileView(),
                        label: {
                            ///∆ ...........
                            ///  • The `NavigationLink` works like a `Button`,
                            ///    where you can `click` it like a `Button` &
                            ///    it will `navigate` to where your argument
                            ///    passed on the parameter->`destination`.
                            ///
                            ///  • The `UserCellComponent` is the component
                            ///    being `rendered` in the `cell` while
                            ///    iterrating through the `ForEach`
                            ///  ............
                            UserCellComponent(user: user)
                        })
                }// ∆ END ForEach
                
            }// ∆ END VStack
            .padding(.leading)
            //∆ HANGER ™👕™ .................
            
        }///||END__PARENT-SCROLLVIEW||
        
        //.............................
        
    }///-|_End Of body_|
    /*©-----------------------------------------©*/
    
    ///∆ ............... Class Methods ...............
    
    
}// END: [STRUCT]

/*©-----------------------------------------©*/

