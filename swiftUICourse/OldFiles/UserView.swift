//
//  UserView.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 09.12.2021.
//

//import SwiftUI
//
//struct UserView: View {
//    var body: some View {
//        
//        //NavigationView {
//            TabView {
//                FriendsView(viewModel: FriendViewModel(FriendAPI()))
//                    .navigationBarTitle("", displayMode: .inline)
//                    .tabItem {
//                        Image(systemName: "person.2.circle")
//                        Text("Друзья")
//                    }
//                
//                GroupView()
//                    .tabItem {
//                        Image(systemName: "person.3.sequence.fill")
//                        Text("Группы")
//                    }
//                
//                News()
//                    .tabItem {
//                        Image(systemName: "newspaper.fill")
//                        Text("Лента")
//                    }
//            }
//        
//    }
//}
//struct TabView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserView()
//    }
//}
