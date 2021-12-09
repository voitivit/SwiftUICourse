//
//  GroupView.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 09.12.2021.
//

import SwiftUI
struct GroupView: View {
    private var groups: [Group] = [
    Group(name: "Гугль", description: "Закрытая группа", imageName: "google", count: "3 подписчика")
    ]
    var body: some View {
            List(groups) { group in
                    GroupRowView(group: group)
            }
            .modifier(PlainList())
            .navigationBarTitle("Группы", displayMode: .inline)
    }
}

struct GroupsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
