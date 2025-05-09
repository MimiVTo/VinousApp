//
//  userCommentsPage.swift
//  Vinous App
//
//  Created by StudentPM on 5/9/25.
//

import SwiftUI

struct userCommentsPage: View {
    @Binding var thoughts: [posts]
    @Binding var info: [loggedUser]
    @State var message: String = ""
    
//    var user: String
//    var tier: String
//    var postedMessage: String
//    var likes: Int
//    var shares: Int
//    var comments: Int
//    var whoPosted: [String]
//    var commentsPosted: [String]
//    var postLiked: Bool
//    var postShared: Bool
    
    var body: some View {
        ScrollView{
            ZStack{
                InteriorViews()
                VStack{
                    Text("POST")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .fontDesign(.monospaced)
                        .frame(width:600, height:80)
                        .fontDesign(.monospaced)
                        .foregroundColor(Color(hex:"#b86d71"))
                        .background(Color(hex:"#fdf3f2"))
                        .cornerRadius(20)
                        .padding()
                    
                    TextEditor(text: $message)
                        .padding()
                        .frame(width: 350)
                        .background()
                        .cornerRadius(30)

                    Button(action:{
                        post()
                    }){
                        Text("✎ᝰ")
                            .padding()
                            .frame(width: 100)
                            .fontDesign(.monospaced)
                            .font(.title)
                            .foregroundColor(.white)
                            .background(Color(hex:"#b86d71"))
                            .cornerRadius(20)
                            .padding()
                    }
                    
                }
            }
        }
        .background(Color(hex:"#b7a798"))
    }
    
    func post(){
        let userPostedThis = posts(user: info[0].user, tier: info[0].tier, postedMessage: message, likes: 0, shares: 0, comments: 0, whoPosted: [], commentsPosted: [], postLiked: false, postShared: false)
        thoughts.append(userPostedThis)
    }
}

#Preview {
    userCommentsPage(thoughts: .constant([]), info: .constant([]))
}
