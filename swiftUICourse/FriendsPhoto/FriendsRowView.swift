//
//  FriendsRowView.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 09.12.2021.
//

import SwiftUI
import Kingfisher
struct FriendRowView: View {
    var friend: FriendItem
    //Создаем столбцы
    let columns = [
        GridItem(.flexible(minimum: 0, maximum: .infinity)),
        GridItem(.flexible(minimum: 0, maximum: .infinity))
    ]
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical) {
                LazyVGrid(columns: columns, alignment: .leading, spacing:10, pinnedViews: .sectionFooters){
                    AvatarImage {
                        KFImage(URL(string: friend.photo100!)!)
                    }
                    .avatarTap()
                        Text("\(friend.firstName) \(friend.lastName)")
                            .lineLimit(1)
                            .modifier(TitleText())
                        
                        if friend.online == 1 {
                            Text("Сейчас онлайн.")
                                .modifier(OnlineText())
                        } else {
                            Text("\(friend.sex == 1 ? "Была" : "Был") \(friend.lastSeen?.time.getRelativeDateStringFromUTC().lowercased() ?? "").")
                                .modifier(OfflineText())
                        }
                }
               
            }
            }
      
    }
}
