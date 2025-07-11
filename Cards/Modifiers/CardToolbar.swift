//
//  CardModifier.swift
//  Cards
//
//  Created by Roshan Bade on 05/02/2025.
//

import Foundation
import SwiftUI

struct CardToolbar: ViewModifier {
  @Environment(\.dismiss) var dismiss
  @Binding var currentModal: ToolbarSelection?
  @Binding var card: Card
  @State private var stickerImage: UIImage?

  func body(content: Content) -> some View {
    content
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          Button("Done") {
            dismiss()
          }
        }
        ToolbarItem(placement: .bottomBar) {
            BottomToolbar(modal: $currentModal, card: $card)
        }
      }
      .sheet(item: $currentModal) { item in
        switch item {
        case .stickerModal:
          StickerModal(stickerImage: $stickerImage)
            .onDisappear {
              if let stickerImage = stickerImage {
                card.addElement(uiImage: stickerImage)
              }
              stickerImage = nil
            }
        case .photoModal:
            PhotosModal(card: $card)
        default:
          Text(String(describing: item))
        }
      }
  }
}
