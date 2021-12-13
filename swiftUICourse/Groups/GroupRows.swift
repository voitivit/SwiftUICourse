//
//  GroupRows.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 09.12.2021.
//

import SwiftUI
import Kingfisher

struct GroupRowView: View {
    var group: GroupItem
    var body: some View {
        HStack {
            AvatarImage {
                KFImage(URL(string: group.imageURL)!)
            }
            
            VStack(alignment: .leading) {
                Text(group.name)
                    .modifier(TitleText())
                    .lineLimit(1)
                
                Text("\(group.membersCount.formattedString) подписчиков.")
                    .modifier(SubTitleText())
                    .lineLimit(1)
                
            }.padding(.leading, 10)
        }.padding(.top, 20).padding(.bottom, 20)
    }
}
