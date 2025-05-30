//
//  HomePage.swift
//  Vinous App
//
//  Created by StudentPM on 5/5/25.
//

import SwiftUI

struct posts{
    //STRUCT HOLDS ALL OF THE INFO FOR THE HOME PAGE
    var user: String
    var tier: String
    var postedMessage: String
    var likes: Int
    var shares: Int
    var comments: Int
    var whoPosted: [String]
    var commentsPosted: [String]
    var postLiked: Bool
    var postShared: Bool
}

struct HomePage: View {
    
    //BIG ARRAY
    @State var viewedPosts: [posts] = [
        //MESSAGES THAT ARE POSTED ON THE BOARD
        posts(user: "Dimitri Silvmir", tier: "Gold", postedMessage: "Welcome to VinousZone! Here in VinousZone, you can post written messages about anything! Just as long as it's appropriate", likes: 3628, shares: 543, comments: 0, whoPosted: [], commentsPosted: [], postLiked: false, postShared: false),
        posts(user: "Raven Schmidt", tier: "Knight", postedMessage: "Guys, I just ate all of the cookies.. Without telling my wife. Am I cooked?", likes: 131, shares: 303, comments: 2, whoPosted: ["Dimitri Silvmir", "Rosaline Becker"], commentsPosted: ["You're cooked..", "Come home."], postLiked: false, postShared: false),
        posts(user: "Rosaline Becker", tier: "Star Lover", postedMessage: "WHO ATE ALL OF THE COOKIES?? I literally just made a batch a few minutes ago! THEY'RE RAW.", likes: 120, shares: 289, comments: 1, whoPosted: ["Rosemary Fouque"], commentsPosted: ["Oh no, you might want to check in with your husband."], postLiked: false, postShared: false),
        posts(user: "Irene Silvmir", tier: "Floral", postedMessage: "Today, I learned a few trick for planting wonderful flowers!", likes: 300, shares: 10, comments: 3, whoPosted: ["Dimitri Silvmir", "Rosaline Becker", "Rosemary Fouque"], commentsPosted: ["We don't have anymore room in the house...", "You've got to show me one day!", "I'd love to see a photo of them if I could drop by later!"], postLiked: false, postShared: false),
    ]
    
    @Binding var userLoggedAs: [loggedUser]
    @Binding var whichUser: Int
    
    var body: some View {
        NavigationView{
            //Scrollable stuff
            ScrollView{
                ZStack{
                    //Background
                    InteriorViews()
                    VStack{
                        //TITLE ---------------------------
                        Text("Home")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .fontDesign(.monospaced)
                            .frame(width:600, height:80)
                            .fontDesign(.monospaced)
                            .background(Color(hex:"#fdf3f2"))
                            .cornerRadius(20)
                            .padding()
                        NavigationLink(destination:{
                            userCommentsPage(thoughts: $viewedPosts, info: $userLoggedAs, whichUser: $whichUser)
                        }){
                            Text("✎ᝰ Post a Thought!")
                                .padding()
                                .fontDesign(.monospaced)
                                .foregroundColor(Color(hex:"#b86d71"))
                                .background(Color(hex:"#fdf3f2"))
                                .border(Color(hex:"#b86d71"))
                        }
                        

                        //FOR LOOP
                        ForEach (viewedPosts.indices, id:\.self){i in
                            VStack{
                                HStack{
                                    //Username
                                    Text(viewedPosts[i].user)
                                        .padding()
                                        .fontDesign(.monospaced)
                                        .foregroundColor(.white)
                                        .background(Color(hex:"#720124"))
                                        .cornerRadius(20)
                                    // SEPARATING THE TEXT TO MAKE CLEAR --------------------
                                    Text(viewedPosts[i].tier)
                                        .padding()
                                        .fontDesign(.monospaced)
                                        .foregroundColor(.white)
                                        .background(Color(hex:""))
                                        .cornerRadius(20)
                                    //Tier for fun
                                }
                                Text(viewedPosts[i].postedMessage)
                                    .padding()
                                    .frame(width: 350)
                                    .fontDesign(.monospaced)
                                    .foregroundColor(Color(hex:"#b86d71"))
                                    .background(Color(hex:"#fdf3f2"))
                                    .cornerRadius(20)
                                // SEPARATING THE POSTED MESSAGE TO MAKE CLEAR --------------------
                                VStack{
                                    HStack{
                                        Button(action: {
                                            //YOU CAN LIKE A POST -------------------
                                            if viewedPosts[i].postLiked == false{
                                                //ADD TO LIKES
                                                viewedPosts[i].likes += 1
                                                viewedPosts[i].postLiked = true
                                            }
                                            else{
                                                viewedPosts[i].likes -= 1
                                                //UNLIKE THE POST
                                                viewedPosts[i].postLiked = false
                                            }
                                        }){
                                            Text("ꫂ ၴႅၴ Like \(viewedPosts[i].likes)")
                                        }
                                        .padding()
                                        .frame(height: 30)
                                        .fontDesign(.monospaced)
                                        .foregroundColor(.white)
                                        .background(Color(hex:"#b86d71"))
                                        .cornerRadius(20)
                                        
                                        // SEPARATING THE ACTIONS TO MAKE CLEAR --------------------
                                        Button(action: {
                                            if viewedPosts[i].postShared == false{
                                                viewedPosts[i].shares += 1
                                                //ADD TO SHARES
                                                viewedPosts[i].postShared = true
                                            }
                                            else{
                                                viewedPosts[i].shares -= 1
                                                //UNSHARE POST
                                                viewedPosts[i].postShared = false
                                            }
                                        }){
                                            Text("ᯓ➤ Share \(viewedPosts[i].shares)")
                                        }
                                        .padding()
                                        .frame(height: 30)
                                        .fontDesign(.monospaced)
                                        .foregroundColor(.white)
                                        .background(Color(hex:"#b86d71"))
                                        .cornerRadius(20)
                                    }
                                    NavigationLink(destination: {
                                        CommentsPage(commentShown: viewedPosts[i])
                                        //SHOWS CLOSE UP
                                    }){
                                        Text("✎ Comments \(viewedPosts[i].comments)")
                                            .padding()
                                            .frame(height: 30)
                                            .fontDesign(.monospaced)
                                            .foregroundColor(.white)
                                            .background(Color(hex:"#b86d71"))
                                            .cornerRadius(20)
                                    }
                                }
//                                .padding()
                            }
                            .frame(width: 400)
                        }
                        .padding()
                    }
                }
                
//                .navigationTitle("Home")
            }
            .background(Color(hex:"#b7a798"))
        }
    }
}

#Preview {
    HomePage(userLoggedAs: .constant([]), whichUser: .constant(0))
}
