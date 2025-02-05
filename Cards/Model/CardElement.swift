//
//  CardElement.swift
//  Cards
//
//  Created by Roshan Bade on 05/02/2025.
//

import Foundation
import SwiftUI

protocol CardElement {
    var id : UUID { get }
    var transform: Transform { get set }
}

extension CardElement {
    func index(in array: [CardElement]) -> Int? {
        array.firstIndex(where: { $0.id == id })
    }
}

struct ImageElement: CardElement {
    var id = UUID()
    var transform = Transform()
    var image: Image
}

struct TextElement: CardElement {
    var id = UUID()
    var transform = Transform()
    var text: String = ""
    var textColor = Color.black
    var textFont = "Gill Sans"
}

