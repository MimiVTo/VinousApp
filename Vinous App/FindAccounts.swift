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
    var followedAlready: Bool
}

struct FindAccounts: View {
    //Varibles that hold the accounts
    @State var accountsToFind: [accountsToFollow] = [
        accountsToFollow(user: "Dimitri.S", name: "Dimitri Silvmir", following: 3, followers: 62807, bio: "Hey!\nWelcome to VinousZone!", followedAlready: false),
        accountsToFollow(user: "SirRaven", name: "Raven Schmidt", following: 3, followers: 10317, bio: "R <3", followedAlready: false),
        accountsToFollow(user: "RosalinesDiary", name: "Rosaline Becker", following: 4, followers: 21407, bio: "Professional Baker\nMarried!", followedAlready: false),
        accountsToFollow(user: "TheRosemary", name: "Rosemary Fouque", following: 3, followers: 12257, bio: "Model\nShe/Her", followedAlready: false),
    ]
    
    
    //binded variable
    @Binding var following: Int
    
    var body: some View {
        NavigationView{
//            ScrollView{
            ZStack{
                //background ----------------------
                AccountViews()
                VStack{
                    //title of the page
                    Text("Accounts to Follow")
                        .padding()
                        .background(Color(hex:"#fdf3f2"))
                        .cornerRadius(20)
                        .fontDesign(.monospaced)
                        .foregroundColor(Color(hex:"#b86d71"))
                        .font(.title)
                        .padding()
                    //for loop to show what accounts are able to be followed
                    ForEach(accountsToFind.indices, id: \.self){i in
                        VStack{
                            if accountsToFind[i].followedAlready == false{
                                NavigationLink(destination:{
                                    AccountToFollowPage(account: $accountsToFind[i], followingPerson: $following)
                                        .navigationBarBackButtonHidden()
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
    FindAccounts(following: .constant(0))
}
