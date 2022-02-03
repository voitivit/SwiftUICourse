//
//  FriendsPhoto.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 09.12.2021.
//

import SwiftUI
import Kingfisher

struct FriendPhotoView: View {
    var friend: FriendItem
    var body: some View {
        VStack {
            AvatarImage { KFImage(URL(string: friend.photo100!)!) }
            
            Text("\(friend.firstName) \(friend.lastName)")
                .modifier(TitleText())
            
            Spacer()
        }.padding()
    }
}
