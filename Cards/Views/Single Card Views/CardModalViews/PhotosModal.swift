//
//  PhotosModal.swift
//  Cards
//
//  Created by Roshan Bade on 06/02/2025.
//

import SwiftUI
import PhotosUI

struct PhotosModal: View {
    @Binding var card: Card
    // 1
    @State private var selectedItems: [PhotosPickerItem] = []
    var body: some View {
        // 2
        PhotosPicker(
            // 3
            selection: $selectedItems,
            // 4
            matching: .images) {
                // 5
                ToolbarButton(modal: .photoModal)
            }
    }
}

#Preview {
    PhotosModal(card: .constant(Card()))
}
