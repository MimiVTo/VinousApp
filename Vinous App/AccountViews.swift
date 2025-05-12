//
//  AccountViews.swift
//  Vinous App
//
//  Created by StudentPM on 5/12/25.
//

import SwiftUI

struct AccountViews: View {
    var body: some View {
    
        ZStack{
            Image("wallpaper3")
                .resizable(resizingMode: .tile)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    AccountViews()
}
