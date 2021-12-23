//
//  AvatarTap.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 20.12.2021.
//

import Foundation
import SwiftUI

struct AvatarTap: ViewModifier {
    @State var scale: CGFloat = 1
    
    func body(content: Content) -> some View {
        content
            .scaleEffect(self.scale)
            .animation(Animation.interpolatingSpring(mass: 2,
                                                     stiffness: 50,
                                                     damping: 6,
                                                     initialVelocity: 0.5))
            
            .onTapGesture {
                withAnimation(.linear(duration: 0.3)) {
                    //Уменьшаем при нажатии
                    self.scale = 0.2
                    
                    //далее увеличивается (пружинит)
                    var dispatchTime = DispatchTime.now() + 0.2
                    DispatchQueue.main.asyncAfter(deadline: dispatchTime) {
                        self.scale = 1.2
                    }
                    
                    //Возврат в исходное состояние
                    dispatchTime = dispatchTime + 0.2
                    DispatchQueue.main.asyncAfter(deadline: dispatchTime) {
                        self.scale = 1
                    }
                }
            }
    }
}
extension View {
    func avatarTap() -> some View {
        self.modifier(AvatarTap())
    }
}


