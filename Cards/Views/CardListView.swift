//
//  CardListView.swift
//  Cards
//
//  Created by Roshan Bade on 05/02/2025.
//

import SwiftUI

struct CardListView: View {
    @State private var isPresented = false
    @EnvironmentObject var store: CardStore
    
    var list: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(store.cards) { card in
                    CardThumbnail(card: card)
                }
            }
        }
    }
    
    var body: some View {
        list
        .fullScreenCover(isPresented: $isPresented) {
            SingleCardView()
        }
        .onTapGesture {
            isPresented = true
        }
    }
}

#Preview {
    CardListView()
        .environmentObject(CardStore(defaultData: true))
}

