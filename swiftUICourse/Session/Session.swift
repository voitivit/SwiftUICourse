//
//  Session.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 13.12.2021.
//

import SwiftUI

class Session: ObservableObject {
    
    static let instance = Session()
    
    private init() {}
    
    @Published var isAuthorized: Bool = false
    @Published var userId: String = ""
    @Published var token: String = ""

    @Published var cliendId = "7548358"
    @Published var version = "5.131"
}
