//
//  TabPage.swift
//  Vinous App
//
//  Created by StudentPM on 5/7/25.
//

import SwiftUI

struct TabPage: View {
    //Binded variables
    @Binding var userPage: [loggedUser]
    @Binding var whichUser: Int
    
    var body: some View {
        //The tabview for the user to look at everything
        TabView{
            //Shows the home screen
            HomePage(userLoggedAs: $userPage, whichUser: $whichUser)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            //SPECIAL
            SpecialPage()
                .tabItem{
                    Image(systemName: "star")
                    Text("Special")
                }
            //Profile
            AccountPage(userLogged: $userPage, whichUser: $whichUser)
                .tabItem{
                    Image(systemName: "heart")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    TabPage(userPage: .constant([]), whichUser: .constant(0))
}
