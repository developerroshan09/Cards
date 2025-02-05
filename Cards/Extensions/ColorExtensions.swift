//
//  ColorExtensions.swift
//  Cards
//
//  Created by Roshan Bade on 05/02/2025.
//

import Foundation
import SwiftUI

extension Color {
    static let colors: [Color] = [
        .green, .red, .blue, .gray, .yellow, .pink, .orange, .purple
    ]
    
    static func random() -> Color {
        colors.randomElement() ?? .black
    }
}
