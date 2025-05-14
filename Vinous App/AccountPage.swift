//
//  AccountPage.swift
//  Vinous App
//
//  Created by StudentPM on 5/7/25.
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

struct AccountPage: View {
    //Varibles that hold the accounts
    @State var accountsToFind: [accountsToFollow] = [
        accountsToFollow(user: "Dimitri.S", name: "Dimitri Silvmir", following: 3, followers: 62807, bio: "Hey!\nWelcome to VinousZone!", followedAlready: false),
        accountsToFollow(user: "SirRaven", name: "Raven Schmidt", following: 3, followers: 10317, bio: "R <3", followedAlready: false),
        accountsToFollow(user: "RosalinesDiary", name: "Rosaline Becker", following: 4, followers: 21407, bio: "Professional Baker\nMarried!", followedAlready: false),
        accountsToFollow(user: "TheRosemary", name: "Rosemary Fouque", following: 3, followers: 12257, bio: "Model\nShe/Her", followedAlready: false),
    ]
    @Binding var userLogged: [loggedUser]
    @Binding var whichUser: Int
    
    var body: some View {
        NavigationView{
            ZStack{
                AccountViews()
                VStack{
                    Spacer()
                    HStack{
                        //profile picture
                        Image("icon2")
                            .resizable()
                            .frame(width:80,height:80)
                            .padding()
                        VStack{
                            //The user stuff
                            Text("\(userLogged[whichUser].user)")
//                            Text("Username")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .fontDesign(.monospaced)
                                .foregroundColor(Color(hex:"#b86d71"))
                            Text("\(userLogged[whichUser].name)")
//                            Text("Name")
                                .fontDesign(.monospaced)
                                .foregroundColor(Color(hex:"#b86d71"))
                            Text("_________________")
                                .foregroundColor(Color(hex:"#b86d71"))
                        }
                        .padding()
                    }
                    HStack{
                        //shows the following and follower count
                        Text("Following\n\(userLogged[whichUser].following)")
                            .padding()
                            .fontDesign(.monospaced)
                            .foregroundColor(Color(hex:"#b86d71"))
                        Text("Follower\n\(userLogged[whichUser].followers)")
                            .padding()
                            .fontDesign(.monospaced)
                            .foregroundColor(Color(hex:"#b86d71"))
                    }
                    //The bio that they set
                    Text("\(userLogged[whichUser].bio)")
                        .frame(width: 300,height:80)
                        .foregroundColor(Color(hex:"#b86d71"))
                        .border(Color(hex:"#b86d71"))
                    HStack{
                        NavigationLink(destination: {
                            //Be able to edit your stuff
                            AccountSettingsPage(userLogged: $userLogged, whichUser:$whichUser)
                        }){
                            Text("Edit")
                                .padding()
                                .frame(height: 30)
                                .fontDesign(.monospaced)
                                .foregroundColor(.white)
                                .background(Color(hex:"#b86d71"))
                                .cornerRadius(20)
                        }
                        .padding()
                        NavigationLink(destination: {
                            //able to go look at other profiles frfr
                            FindAccounts(following: $userLogged, whichUser: $whichUser, accountsToFind: $accountsToFind)
//                                .navigationBarBackButtonHidden()
                        }){
                            Text("Find Accounts")
                                .padding()
                                .frame(height: 30)
                                .fontDesign(.monospaced)
                                .foregroundColor(.white)
                                .background(Color(hex:"#b86d71"))
                                .cornerRadius(20)
                        }
//                        .padding()
                    }
                }
                .padding()
                .frame(width:350, height: 400)
                .background(Color(hex:"#fdf3f2"))
                .cornerRadius(30)
                .position(x: 200, y: 350)
            }
        }
    }
}

#Preview {
    AccountPage(userLogged: .constant([]), whichUser: .constant(0))
}
