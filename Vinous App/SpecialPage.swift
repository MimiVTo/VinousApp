//
//  SpecialPage.swift
//  Vinous App
//
//  Created by StudentPM on 5/13/25.
//

import SwiftUI

struct SpecialPage: View {
    var body: some View {
        ZStack{
            MusicViews()
            Rectangle()
                .fill(Color(hex:"#602f32"))
                .frame(width:350, height:500)
                .cornerRadius(50)
            VStack{
                Image("vinylPlayer2")
                    .resizable()
                    .frame(width:300, height:300)
                Text("「 ✦ 𝐍𝐚𝐦𝐞 ✦ 」")
                    .font(.title2)
                    .foregroundColor(Color(hex:"#fdf3f2"))
                Text("────୨ৎ────")
                    .font(.title)
//                    .foregroundColor(Color(hex:"#fdf3f2"))
                Text("ʚ♡ɞ ⁀➴ ▶︎•၊၊||၊|။||||။၊|။•")
                    .font(.title3)
                    .foregroundColor(Color(hex:"#fdf3f2"))
            }
            
        }
    }
}

#Preview {
    SpecialPage()
}
