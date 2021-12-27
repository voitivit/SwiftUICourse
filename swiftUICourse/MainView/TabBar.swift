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
                FriendsView(viewModel: Friend(FriendAPI()))
                    .navigationBarTitle("", displayMode: .inline)
                    .tabItem {
                        Image(systemName: "person.2.circle")
                        Text("Друзья")
                    }
                
                GroupsView(viewModel: GroupViewModel(GroupAPI()))
                    .navigationBarTitle("", displayMode: .inline)
                    .tabItem {
                        Image(systemName: "person.3.sequence.fill")
                        Text("Группы")
                    }
            }.navigationBarBackButtonHidden(true)
    }
}
    
    
//
//                News()
//                    .tabItem {
//                        Image(systemName: "newspaper.circle")
//                        Text("Новости")
//                    }
//            }

//    }
    


//struct TabBar_Previews: PreviewProvider {
//    static var previews: some View {
//        UserView()
//    }
//}

