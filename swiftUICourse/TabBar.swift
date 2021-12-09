//
//  TabBar.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 09.12.2021.
//

import SwiftUI
struct TabBar: View {
    var body: some View {
        
        //NavigationView {
            TabView {
                FriendsView()
                    .tabItem {
                        Image(systemName: "person.2.circle")
                        Text("Друзья")
                    }
                
                GroupView()
                    .tabItem {
                        Image(systemName: "person.3.sequence.fill")
                        Text("Группы")
                    }
                
                News()
                    .tabItem {
                        Image(systemName: "newspaper.circle")
                        Text("Новости")
                    }
            }
        //}.navigationBarTitle("ВК-клиент")//.navigationBarHidden(true)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
