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
}
