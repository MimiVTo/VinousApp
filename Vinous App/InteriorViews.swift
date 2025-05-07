//
//  InteriorViews.swift
//  Vinous App
//
//  Created by StudentPM on 5/7/25.
//

import SwiftUI

struct InteriorViews: View {
    var body: some View {
        ZStack{
            Image("wallpaper2")
            
            Rectangle()
                .fill(Color(hex:"#b7a798"))
                .frame(width:500, height:100)
                .position(x: 400, y:70)
            
            Rectangle()
                .fill(Color(hex:"#bbab9c"))
                .frame(width: 500, height: 130)
                .position(x: 400, y:860)
                .border(Color(hex:"#8c776a"))
        }
    }
}

#Preview {
    InteriorViews()
}
