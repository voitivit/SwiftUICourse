//
//  AppView.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 08.12.2021.
//

import SwiftUI

struct AppView: View  {
    @State private var shouldShowUserView: Bool = false
    var body: some View {
        NavigationView {
            HStack {
                LoginView(showUserView: $shouldShowUserView)
                NavigationLink(destination: TabBar(), isActive: $shouldShowUserView) {
                    EmptyView()
                }
                
//                NavigationLink(isActive: $shouldShowUserView) {
//                    UserView()
//                } label: {
//                    EmptyView()
//                }

            }
        }
    }
}
struct AppView_Preview: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
