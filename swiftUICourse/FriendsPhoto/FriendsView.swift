//
//  FriendsView.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 09.12.2021.
//

import SwiftUI

struct FriendsView: View {
    @ObservedObject var viewModel: Friend
    
    init(viewModel: Friend) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        List(viewModel.friends) { friend in
            NavigationLink(destination: FriendPhotoView(friend: friend)) {
                FriendRowView(friend: friend)
            }
        }
        .modifier(PlainList())
        .onAppear { viewModel.fetch() }
    }
}
