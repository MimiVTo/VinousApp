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
                .resizable(resizingMode: .tile)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    InteriorViews()
}
