//
//  AvaImage.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 13.12.2021.
//

import SwiftUI
import Kingfisher

struct AvatarImage: View {
    var content: KFImage
    @State var push = false
    @State var  isAnimationOn = true
    init(@ViewBuilder content: () -> KFImage) {
        self.content = content()
    }
 
    var body: some View {
        
            content
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 45, height: 45, alignment: .center)
                .clipShape(Circle())
                .avatarTap()
                .onTapGesture {
                    
                    self.isAnimationOn.toggle()
                }

    }
    
    
}

