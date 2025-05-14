//
//  SpecialPage.swift
//  Vinous App
//
//  Created by StudentPM on 5/13/25.
//

import SwiftUI

struct SpecialPage: View {
    @State var addedText: String = ""
    @State var count: Int = 0
    var body: some View {
        ZStack{
            //the background stuff
            MusicViews()
//            Rectangle()
//                .fill(Color(hex:"#602f32"))
//                .frame(width:350, height:500)
//                .cornerRadius(50)
            VStack{
                //image of a vinyl player to be looking nice and all
                Image("vinylPlayer2")
                    .resizable()
                    .frame(width:300, height:300)
                //DECORATIONS FOR BELOW
                Text("「 ✦ 𝐕𝐢𝐧𝐲𝐥 𝐏𝐥𝐚𝐲𝐞𝐫 ✦ 」")
                    .font(.title2)
                    .foregroundColor(Color(hex:"#fdf3f2"))
                Text("────୨ৎ────")
                    .font(.title)
//                    .foregroundColor(Color(hex:"#fdf3f2"))
                Text("ʚ♡ɞ ⁀➴ ▶︎•၊၊||၊|။||||။၊|။•")
                    .font(.title2)
                    .foregroundColor(Color(hex:"#fdf3f2"))
                Text(addedText)
                    .padding()
                    .frame(width:250)
                    .border(Color(hex:""))
                Button(action:{
                    //Just to be funny, as the count goes up, it says something
                    count += 1
                    if count == 1{
                        addedText = "You really thought I was going to play music?"
                    }
                    if count == 2{
                        addedText = "Still won't do it for you buddy."
                    }
                    if count == 3{
                        addedText = "Why are you so persistent??"
                    }
                    if count == 4{
                        addedText = "STOP."
                    }
                    
                }){
                    Text("Play Music")
                        .padding()
                        .font(.title3)
                        .background(Color(hex:""))
                        .foregroundColor(Color(hex:"#fdf3f2"))
                        .cornerRadius(30)
                }
            }
            .padding()
            .background(Color(hex:"#602f32"))
            .cornerRadius(20)
        }
    }
}

#Preview {
    SpecialPage()
}
