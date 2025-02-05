//
//  CardDetailView.swift
//  Cards
//
//  Created by Roshan Bade on 05/02/2025.
//

import SwiftUI

struct CardDetailView: View {
    @EnvironmentObject var store: CardStore
    @Binding var card: Card
    
    var body: some View {
        ZStack {
            ForEach($card.elements, id: \.id) { $element in
                CardElementView(element: element)
                    .resizableView()
                    .frame(width: element.transform.size.width,
                            height: element.transform.size.height
                    )
            }
        }
    }
}

#Preview {
    CardDetailView(card: .constant(initialCards[0]))
}
