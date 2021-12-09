//
//  GroupModel.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 09.12.2021.
//

import Foundation
class Group: Identifiable {
    internal init(name: String, description: String, imageName: String, count: String) {
        self.name = name
        self.description = description
        self.imageName = imageName
        self.count = count
    }
    
    let id: UUID = UUID()
    let name: String
    let description: String
    let imageName: String
    let count: String
}
