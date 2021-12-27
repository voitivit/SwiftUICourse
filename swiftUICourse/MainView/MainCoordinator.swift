//
//  MainCoordinator.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 23.12.2021.
//

import Foundation
import UIKit
import SwiftUI
class MainCoordinator: UITabBarController {
    var userViewModel: Friend
    var groupViewModel: GroupViewModel
    
    
    init() {
        let friendsApiService = FriendAPI()
        let groupApiService = GroupAPI()
        self.userViewModel = Friend(friendsApiService)
        self.groupViewModel = GroupViewModel(groupApiService)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
                
        let usersView = FriendsView(viewModel: self.userViewModel)
        let vcUsers = UIHostingController(rootView: usersView)
        let usersTabBarItem = UITabBarItem(title: "Друзья", image: UIImage(systemName: "person.2.fill"), tag: 0)
        vcUsers.tabBarItem = usersTabBarItem
        
        let groupsView = GroupsView(viewModel: self.groupViewModel)
        let vcGroups = UIHostingController(rootView: groupsView)
        let groupsTabBarItem = UITabBarItem(title: "Группы", image: UIImage(systemName: "person.3.fill"), tag: 1)
        vcGroups.tabBarItem = groupsTabBarItem
        
        let vcNews = UIHostingController(rootView: News())
        let newsTabBarItem = UITabBarItem(title: "Новости", image: UIImage(systemName: "newspaper.fill"), tag: 2)
        vcNews.tabBarItem = newsTabBarItem
         
        let controllers = [vcUsers, vcGroups, vcNews]
        self.viewControllers = controllers
        self.navigationItem.title = "ssss"
    }
}

