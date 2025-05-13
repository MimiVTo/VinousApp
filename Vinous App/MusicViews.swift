//
//  MusicViews.swift
//  Vinous App
//
//  Created by StudentPM on 5/13/25.
//

import SwiftUI

struct MusicViews: View {
    var body: some View {
        ZStack{
            Image("wallpaper4")
                .resizable()
                .frame(width:1400, height:900)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    MusicViews()
}
