//
//  FriendsRowView.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 09.12.2021.
//

import SwiftUI
struct FriendRowView: View {
    var friend: Friend
    
    var body: some View {
        HStack {
            Avatars {
                Image(friend.imageName)
            }
            
            VStack(alignment: .leading) {
                Text(friend.name).modifier(TitleText())
                Text(friend.isOnline ? "Онлайн" : friend.lastSeen).modifier(SubTitleText())
            }.padding(.leading, 10)
        }.padding(.top, 20).padding(.bottom, 20)
    }
}

