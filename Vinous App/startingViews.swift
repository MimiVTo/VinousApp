//
//  startingViews.swift
//  Vinous App
//
//  Created by StudentPM on 5/5/25.
//

import SwiftUI

struct startingViews: View {
    @State var text: String = ""
    var body: some View {
        ZStack{
            Image("Wallpaper")
                .resizable()
                .frame(width: 600, height: 900)
            Rectangle()
                .fill(Color(hex:"#720124"))
                .frame(width: 500, height: 70)
                .position(x: 300, y:45)
        }
    }
}

#Preview {
    startingViews()
}
