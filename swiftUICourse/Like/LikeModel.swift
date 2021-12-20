//
//  LikeModel.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 20.12.2021.
//

import Foundation
class LikeViewModel: ObservableObject {
    @Published var countLike: Int
    @Published var isLiked: Bool
    
    init(countLike: Int, isLiked: Bool = false) {
        self.countLike = countLike
        self.isLiked = isLiked
    }
    
    func toggleLike() {
        let cnt = isLiked ? -1 : 1
        countLike += cnt
        isLiked.toggle()
    }
}
