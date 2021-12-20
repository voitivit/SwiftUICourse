//
//  AppView.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 08.12.2021.
//

import SwiftUI

struct AppView: View {
    @ObservedObject var session = Session.instance


    var body: some View {
        NavigationView {
            HStack {
                VKWebLogin()
                NavigationLink(destination: TabBar(), isActive: $session.isAuthorized) { EmptyView() }
            }
        }
    }
}
