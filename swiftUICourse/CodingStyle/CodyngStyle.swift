//
//  CodyngStyle.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 16.12.2021.
//

import SwiftUI
import Foundation
enum WritingStyles: String {
    case camelCase = ""
    case snakeCase = "_"
    case kebabCase = "-"
}

@propertyWrapper
struct CodingStyle {
    
    private var value: String
    private let styles: WritingStyles

    init(wrappedValue: String, style: WritingStyles) {
        self.value = wrappedValue
        self.styles = style
    }
    
    public var wrappedValue: String {
        get {
            get()
        }
        set {
            set(newValue)
        }
    }

    private func get() -> String {
        return format(value)
    }
    
    private mutating func set(_ newValue: String) {
        self.value = newValue
    }
    
    private func format(_ string: String) -> String {
        var tmpStr = string
            .replacingOccurrences(of: WritingStyles.snakeCase.rawValue, with: " ")
            .replacingOccurrences(of: WritingStyles.kebabCase.rawValue, with: " ")
            .lowercased()
        
        var arr = tmpStr
            .split(separator: " ")
            .map { String($0) }
        
        if styles == .camelCase {
            arr = arr.map { $0.capitalized }
            if !arr.isEmpty {
                arr[0] = arr[0].lowercased()
            }
        }
        
        tmpStr = arr.joined(separator: styles.rawValue)
        return tmpStr
    }
}


