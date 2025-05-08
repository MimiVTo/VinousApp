//
//  TabPage.swift
//  Vinous App
//
//  Created by StudentPM on 5/7/25.
//

import SwiftUI

struct TabPage: View {
    var body: some View {
        TabView{
            //Shows the home screen
            HomePage()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            //Profile
            AccountPage()
                .tabItem{
                    Image(systemName: "heart")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    TabPage()
}
