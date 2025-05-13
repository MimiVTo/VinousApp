//
//  FindAccounts.swift
//  Vinous App
//
//  Created by StudentPM on 5/12/25.
//

import SwiftUI
struct accountsToFollow{
    var user: String
    var name: String
    var following: Int
    var followers: Int
    var bio: String
}

struct FindAccounts: View {

    @State var accountsToFind: [accountsToFollow] = [
        accountsToFollow(user: "Dimitri.S", name: "Dimitri Silvmir", following: 3, followers: 62807, bio: "Hey!\nWelcome to VinousZone!"),
        accountsToFollow(user: "SirRaven", name: "Raven Schmidt", following: 3, followers: 10317, bio: "R <3"),
        accountsToFollow(user: "RosalinesDiary", name: "Rosaline Becker", following: 4, followers: 21407, bio: "Professional Baker\nMarried!"),
        accountsToFollow(user: "TheRosemary", name: "Rosemary Fouque", following: 3, followers: 12257, bio: "Model\nShe/Her"),
    ]
    
    var body: some View {
        NavigationView{
//            ScrollView{
            ZStack{
                AccountViews()
                VStack{
                    Text("Accounts to Follow")
                        .padding()
                        .background(Color(hex:"#fdf3f2"))
                        .cornerRadius(20)
                        .fontDesign(.monospaced)
                        .foregroundColor(Color(hex:"#b86d71"))
                        .font(.title)
                        .padding()
                    ForEach(accountsToFind.indices, id: \.self){i in
                        VStack{
                            NavigationLink(destination:{
                                AccountToFollowPage(account: accountsToFind[i])
                            }){
                                Text(accountsToFind[i].user)
                                    .padding()
                                    .frame(width: 300, height: 50)
                                    .fontDesign(.monospaced)
                                    .foregroundColor(.white)
                                    .background(Color(hex:"#b86d71"))
                                    .cornerRadius(20)
                            }
                        }
                        .padding()
                    }
                }
            }
//            }
//            .background(Color(hex:"#b7a798"))
        }
    }
}

#Preview {
    FindAccounts()
}
