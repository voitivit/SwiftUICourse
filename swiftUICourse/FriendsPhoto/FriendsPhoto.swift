//
//  FriendsPhoto.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 09.12.2021.
//

import SwiftUI

struct FriendPhotoView: View {
    var friend: Friend
    var body: some View {
        Image(friend.imageName)
    }
}
