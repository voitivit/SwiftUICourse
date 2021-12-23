//
//  MainUIKit.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 23.12.2021.
//

import Foundation
import SwiftUI
struct MainUIKit: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> MainCoordinator {
        MainCoordinator()
    }
    
    func updateUIViewController(_ uiViewController: MainCoordinator, context: Context) { }
}
