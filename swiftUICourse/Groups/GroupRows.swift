//
//  GroupRows.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 09.12.2021.
//

import SwiftUI

struct GroupRowView: View {
    var group: Group
    var body: some View {
        HStack{
            Avatars {
                Image(group.imageName)
            }
            
            VStack(alignment: .leading) {
                Text(group.name).modifier(TitleText())
                Text(group.description).modifier(SubTitleText())
                Text(group.count).modifier(SubTitleText())
            }.padding(.leading, 10)
        }.padding(.top, 20).padding(.bottom, 20)
    }
}
