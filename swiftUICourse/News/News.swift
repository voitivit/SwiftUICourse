//
//  News.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 09.12.2021.
//

import SwiftUI
struct News: View {
    var body: some View {
        Text("Новостей пока нет").navigationBarTitle("ВК-клиент", displayMode: .inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        News()
    }
}
