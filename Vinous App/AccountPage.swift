//
//  AccountPage.swift
//  Vinous App
//
//  Created by StudentPM on 5/7/25.
//

import SwiftUI

struct AccountPage: View {
    @Binding var userLogged: [loggedUser]
    
    var body: some View {
        NavigationView{
            ScrollView{
                ZStack{
                    InteriorViews()
                    VStack{
                        
                    }
                }
            }
            .background(Color(hex:"#b7a798"))
        }
    }
}

#Preview {
    AccountPage(userLogged: .constant([]))
}
