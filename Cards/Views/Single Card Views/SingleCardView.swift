//
//  SingleCardView.swift
//  Cards
//
//  Created by Roshan Bade on 05/02/2025.
//

import SwiftUI

struct SingleCardView: View {
    @State private var currentModal: ToolbarSelection?
    @Binding var card: Card

    
    var body: some View {
        NavigationStack {ZStack {
            card.backgroundColor
            CardDetailView(card: $card)
                .cardToolbar(modal: $currentModal)
        }
        }
    }
}

#Preview {
    SingleCardView(card: .constant(initialCards[0]))
}
