//
//  HomePage.swift
//  Vinous App
//
//  Created by StudentPM on 5/5/25.
//

import SwiftUI

struct posts{
    var user: String
    var tier: String
    var postedMessage: String
}

struct HomePage: View {

    @State var viewedPosts: [posts] = [
        posts(user: "Dimitri.S", tier: "Gold", postedMessage: "Welcome to VinousZone! Here in VinousZone, you can post written messages about anything! Just as long as it's appropriate"),
    ]
    
    var body: some View {
        NavigationView{
            ZStack{
                InteriorViews()
                VStack{
                    ForEach (viewedPosts.indices, id:\.self){i in
                        VStack{
                            HStack{
                                Text(viewedPosts[i].user)
                                    .padding()
                                    .fontDesign(.monospaced)
                                    .foregroundColor(.white)
                                    .background(Color(hex:"#b86d71"))
                                    .cornerRadius(20)
                                Text(viewedPosts[i].tier)
                                    .padding()
                                    .fontDesign(.monospaced)
                                    .foregroundColor(.white)
                                    .background(Color(hex:"#"))
                                    .cornerRadius(20)
                            }
                        }
                    }
                }
            }
            .navigationTitle("HOME")
        }
    }
}

#Preview {
    HomePage()
}
