//
//  CardThumbnailView.swift
//  Cards
//
//  Created by Roshan Bade on 05/02/2025.
//

import SwiftUI

struct CardThumbnail: View {
    let card: Card
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(card.backgroundColor)
            .frame(width: 150, height: 250)
    }
}


#Preview {
    CardThumbnail(card: initialCards[0])
}
