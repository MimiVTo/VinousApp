//
//  AccountPage.swift
//  Vinous App
//
//  Created by StudentPM on 5/7/25.
//

import SwiftUI

struct AccountPage: View {
    @Binding var userLogged: [loggedUser]
    @State var following: Int = 0
    @State var followers: Int = 0
    @State var bio: String = ""
    
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
//                            Text("\(userLogged[0].user)")
                            Text("Username")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .fontDesign(.monospaced)
                                .foregroundColor(Color(hex:"#b86d71"))
//                            Text("\(userLogged[0].name)")
                            Text("Name")
                                .fontDesign(.monospaced)
                                .foregroundColor(Color(hex:"#b86d71"))
                            Text("_________________")
                                .foregroundColor(Color(hex:"#b86d71"))
                        }
                        .padding()
                    }
                    HStack{
                        //shows the following and follower count
                        Text("Following\n\(following)")
                            .padding()
                            .fontDesign(.monospaced)
                            .foregroundColor(Color(hex:"#b86d71"))
                        Text("Follower\n\(followers)")
                            .padding()
                            .fontDesign(.monospaced)
                            .foregroundColor(Color(hex:"#b86d71"))
                    }
                    //The bio that they set
                    Text("\(bio)")
                        .frame(width: 300,height:80)
                        .foregroundColor(Color(hex:"#b86d71"))
                        .border(Color(hex:"#b86d71"))
                    HStack{
                        NavigationLink(destination: {
                            //Be able to edit your stuff
                            AccountSettingsPage(userLogged: $userLogged, following: $following, followers: $followers, bio: $bio)
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
                            FindAccounts(following: $following)
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
    AccountPage(userLogged: .constant([]))
}
