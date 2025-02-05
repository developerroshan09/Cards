//
//  SingleCardView.swift
//  Cards
//
//  Created by Roshan Bade on 05/02/2025.
//

import SwiftUI

struct SingleCardView: View {
    @State private var currentModal: ToolbarSelection?
    
    let card: Card
    
    var content: some View {
        ZStack {
            Group {
                Capsule()
                    .foregroundColor(.yellow)
                
                
                Text("Resize Me!")
                    .font(.system(size: 500))
                    .minimumScaleFactor(0.01)
                    .lineLimit(1)
                    .fontWeight(.bold)
            }
            .resizableView()
            
            Circle()
                .resizableView()
                .offset(CGSize(width: 50, height: 200))
        }
    }
    
    var body: some View {
        NavigationStack {
            card.backgroundColor
                .cardToolbar(modal: $currentModal)
        }
    }
}

#Preview {
    SingleCardView(card: initialCards[0])
}
