//
//  AccountToFollowPage.swift
//  Vinous App
//
//  Created by StudentPM on 5/12/25.
//

import SwiftUI

struct AccountToFollowPage: View {
    @Binding var account: accountsToFollow
    @State var followingThem: Bool = false
    @Binding var followingPerson: [loggedUser]
    @Binding var whichUser: Int
    
    var body: some View {
        NavigationView{
            ZStack{
                AccountViews()
                VStack{
                    HStack{
                        if account.user == "Dimitri.S"{
                            Image("DimitriIcon")
                                .resizable()
                                .frame(width:100,height:110)
//                                .padding()
                        }
                        else{
                            Image("icon2")
                                .resizable()
                                .frame(width:80,height:80)
                                .padding()
                        }
                        VStack{
                            Text("\(account.user)")
//                            Text("Username")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .fontDesign(.monospaced)
                                .foregroundColor(Color(hex:"#b86d71"))
                            Text("\(account.name)")
//                            Text("Name")
                                .fontDesign(.monospaced)
                                .foregroundColor(Color(hex:"#b86d71"))
                            Text("_______________")
                                .foregroundColor(Color(hex:"#b86d71"))
                        }
                        .padding()
                    }
                    HStack{
                        //Shows their following and follower account
                        Text("Following\n\(account.following)")
                            .padding()
                            .fontDesign(.monospaced)
                            .foregroundColor(Color(hex:"#b86d71"))
                        Text("Follower\n\(account.followers)")
                            .padding()
                            .fontDesign(.monospaced)
                            .foregroundColor(Color(hex:"#b86d71"))
                    }
                    //the bio ----------------------------
                    Text("\(account.bio)")
                        .frame(width: 300,height:80)
                        .foregroundColor(Color(hex:"#b86d71"))
                        .border(Color(hex:"#b86d71"))
                        .padding()
                    HStack{
                        //choose to follow them or to unfollow them
                        if followingThem == false{
                            //button to follow
                            Button(action:{
                                account.followers += 1
                                followingPerson[whichUser].following += 1
                                followingThem = true
                                account.followedAlready = true
                            }){
                                Text("Follow")
                                    .padding()
                                    .frame(height: 30)
                                    .fontDesign(.monospaced)
                                    .foregroundColor(.white)
                                    .background(Color(hex:"#b86d71"))
                                    .cornerRadius(20)
                            }
                        }
                        else{
                            //the button the unfollow
                            Button(action:{
                                account.followers -= 1
                                followingPerson[whichUser].following -= 1
                                followingThem = false
                            }){
                                Text("Unfollow")
                                    .padding()
                                    .frame(height: 30)
                                    .fontDesign(.monospaced)
                                    .foregroundColor(.white)
                                    .background(Color(hex:"#b86d71"))
                                    .cornerRadius(20)
                            }
                        }
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
    AccountToFollowPage(account: .constant(accountsToFollow(user: "", name: "", following: 0, followers: 0, bio: "", followedAlready: false)), followingPerson: .constant([]), whichUser: .constant(0))
}
