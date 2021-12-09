//
//  FriendsView.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 09.12.2021.
//

import SwiftUI

struct FriendsView: View {
    private var friends: [Friend] = [
        Friend(name: "Миша", imageName: "ava1", lastSeen: "Онлайн час назад"),
        Friend(name: "Не Миша", imageName: "ava2", lastSeen: "", isOnline: true),
       ]
    var body: some View {
        List(friends) { friend in
            NavigationLink(destination: FriendPhotoView(friend: friend)) {
                FriendRowView(friend: friend)
            }
        }
        .modifier(PlainList())
        .navigationBarTitle("Друзья", displayMode: .inline)
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
