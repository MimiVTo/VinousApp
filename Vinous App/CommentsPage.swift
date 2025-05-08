//
//  CommentsPage.swift
//  Vinous App
//
//  Created by StudentPM on 5/8/25.
//

import SwiftUI

struct CommentsPage: View {
    var commentShown: posts
    
    var body: some View {
        ScrollView{
            ZStack{
                InteriorViews()
                VStack{
                    Text("COMMENTS")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .fontDesign(.monospaced)
                        .frame(width:600, height:80)
                        .fontDesign(.monospaced)
                        .background(Color(hex:"#fdf3f2"))
                        .cornerRadius(20)
                        .padding()
                    
                    ForEach (commentShown.commentsPosted.indices, id: \.self){i in
                        VStack{
                            Text("\(commentShown.whoPosted[i])")
                                .padding()
                                .fontDesign(.monospaced)
                                .foregroundColor(.white)
                                .background(Color(hex:"#720124"))
                                .cornerRadius(20)
                            
                            Text("\(commentShown.commentsPosted[i])")
                                .padding()
                                .fontDesign(.monospaced)
                                .foregroundColor(.white)
                                .background(Color(hex:"#b86d71"))
                                .cornerRadius(20)
                        }
                        .padding()
                        .frame(width: 350)
                        .background(Color(hex:"#fdf3f2"))
                        .cornerRadius(20)
                    }
                    Spacer()
                }
                
            }
        }
        .background(Color(hex:"#b7a798"))
    }
}

#Preview {
    CommentsPage(commentShown: posts(user: "", tier: "", postedMessage: "", likes: 0, shares: 0, comments: 0, whoPosted: [], commentsPosted: []))
}
