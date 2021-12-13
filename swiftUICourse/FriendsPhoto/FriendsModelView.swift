//
//  FriendsModelView.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 13.12.2021.
//

import Foundation
class Friend: Identifiable {
    internal init(name: String, imageName: String, lastSeen: String, isOnline: Bool = false) {
        self.name = name
        self.imageName = imageName
        self.lastSeen = lastSeen
        self.isOnline = isOnline
    }
    
    let id: UUID = UUID()
    let name: String
    let imageName: String
    let lastSeen: String
    let isOnline: Bool
}
