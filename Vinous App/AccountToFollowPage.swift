//
//  AccountToFollowPage.swift
//  Vinous App
//
//  Created by StudentPM on 5/12/25.
//

import SwiftUI

struct AccountToFollowPage: View {
    @State var account: accountsToFollow
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    AccountToFollowPage(account: accountsToFollow(user: "", name: "", following: 0, followers: 0, bio: ""))
}
