//
//  startingViews.swift
//  Vinous App
//
//  Created by StudentPM on 5/5/25.
//

import SwiftUI

struct startingViews: View {
    var body: some View {
        ZStack{
            Image("Wallpaper")
                .resizable()
                .frame(width: 600, height: 900)
            
            Rectangle()
                .fill(Color(hex:"#720124"))
                .frame(width: 500, height: 100)
                .position(x: 300, y:40)
            
            Rectangle()
                .fill(Color(hex:"#720124"))
                .frame(width: 500, height: 70)
                .position(x: 300, y:830)
        }
    }
}

#Preview {
    startingViews()
}
