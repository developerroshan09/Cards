//
//  CardListView.swift
//  Cards
//
//  Created by Roshan Bade on 05/02/2025.
//

import SwiftUI

struct CardListView: View {
    @State private var selectedCard: Card?
    
    @EnvironmentObject var store: CardStore
    
    var list: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(store.cards) { card in
                    CardThumbnail(card: card)
                        .onTapGesture {
                            selectedCard = card
                        }
                }
            }
        }
    }
    
    var body: some View {
        list
            .fullScreenCover(item: $selectedCard) { card in
                if let index = store.index(for: card) {
                    SingleCardView(card: $store.cards[index])
                } else {
                    fatalError("Unable to locate selected Card!")
                }
            }
    }
}

#Preview {
    CardListView()
        .environmentObject(CardStore(defaultData: true))
}

