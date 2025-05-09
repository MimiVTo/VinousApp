//
//  TabPage.swift
//  Vinous App
//
//  Created by StudentPM on 5/7/25.
//

import SwiftUI

struct TabPage: View {
    @Binding var userPage: [loggedUser]
    
    var body: some View {
        TabView{
            //Shows the home screen
            HomePage(userLoggedAs: $userPage)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            //Profile
            AccountPage(userLogged: $userPage)
                .tabItem{
                    Image(systemName: "heart")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    TabPage(userPage: .constant([]))
}
