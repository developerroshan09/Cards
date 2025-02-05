//
//  CardStore.swift
//  Cards
//
//  Created by Roshan Bade on 05/02/2025.
//

import Foundation
import SwiftUI

class CardStore: ObservableObject {
    @Published var cards: [Card] = []
    
    init(defaultData: Bool = false) {
        if defaultData {
            cards = initialCards
        }
    }
}
