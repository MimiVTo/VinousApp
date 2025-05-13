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
        //Scrollable to see all of the comments
        ScrollView{
            ZStack{
                InteriorViews()
                VStack{
                    //Title of the page
                    Text("COMMENTS")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .fontDesign(.monospaced)
                        .frame(width:600, height:80)
                        .fontDesign(.monospaced)
                        .background(Color(hex:"#fdf3f2"))
                        .cornerRadius(20)
                        .padding()
                    //for loop to see all of the comments that were posted into this page
                    ForEach (commentShown.commentsPosted.indices, id: \.self){i in
                        VStack{
                            //Shows who posted the comment
                            Text("\(commentShown.whoPosted[i])")
                                .padding()
                                .fontDesign(.monospaced)
                                .foregroundColor(.white)
                                .background(Color(hex:"#720124"))
                                .cornerRadius(20)
                            //shows the comment they posted
                            Text("\(commentShown.commentsPosted[i])")
                                .padding()
                                .fontDesign(.monospaced)
                                .foregroundColor(.white)
                                .background(Color(hex:"#b86d71"))
                                .cornerRadius(20)
                        }
                        .padding()
                        .frame(width: 300)
                        .background(Color(hex:"#fdf3f2"))
                        .cornerRadius(20)
                    }
                    //spacer to make it not look awkward
                    Spacer()
                }
                
            }
        }
        .background(Color(hex:"#b7a798"))
    }
}

#Preview {
    CommentsPage(commentShown: posts(user: "", tier: "", postedMessage: "", likes: 0, shares: 0, comments: 0, whoPosted: [], commentsPosted: [], postLiked: false, postShared: false))
}
