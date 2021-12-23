//
//  LikeView.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 20.12.2021.
//

import SwiftUI

struct LikeView: View {
    @ObservedObject var viewModel: LikeViewModel
    
    private var hearts: String {
        self.viewModel.isLiked ? "heart.fill" : "heart"
    }
    
    @State private var opacity = 1.0
    @State private var degress = 0.0
    
    
    var body: some View {
        HStack {
            Text("\(self.viewModel.countLike)")
                .rotation3DEffect(Angle(degrees: self.degress),
                                  axis: (
                                    x: CGFloat(10),
                                    y: CGFloat(10),
                                    z: CGFloat(0)))
            Image(systemName: self.hearts)
                .foregroundColor(self.viewModel.isLiked ? .red : .none)
                .opacity(self.opacity)
                .onTapGesture {
                    self.viewModel.toggleLike()
                    self.opacity = 0.7
                    withAnimation(.linear(duration: 0.7)) {
                        self.opacity = 1
                        self.degress = 360
                    }
                    let dispatchTime = DispatchTime.now() + 1
                    DispatchQueue.main.asyncAfter(deadline: dispatchTime) {
                        self.degress = 0
                    }
                }
        }
        
    }
}

struct LikeView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = LikeViewModel(countLike: 1)
        LikeView(viewModel: viewModel)
    }
}

