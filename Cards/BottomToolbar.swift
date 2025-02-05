//
//  BottomToolbar.swift
//  Cards
//
//  Created by Roshan Bade on 05/02/2025.
//

import SwiftUI

struct ToolbarButton: View {
    let modal : ToolbarSelection

    private let modalButton: [ToolbarSelection: (text: String, imageName: String)] = [
        .photoModal: ("Photos", "photo"),
        .frameModal: ("Frame", "square.on.circle"),
        .stickerModal: ("Stickers", "heart.circle"),
        .textModal: ("Text", "textformat")
    ]
    
    var body: some View {
        
        if let text = modalButton[modal]?.text, let imageName = modalButton[modal]?.imageName {
            VStack {
                Image(systemName: imageName)
                    .font(.largeTitle)
                Text(text)
            }
            .padding(.top)
        }
    }
}

struct BottomToolbar: View {
    
    @Binding var modal: ToolbarSelection?
    
    var body: some View {
        HStack {
            ForEach(ToolbarSelection.allCases) { selection in
                Button {
                    modal = selection
                } label: {
                    ToolbarButton(modal: selection)
                }
            }
        }
    }
}

#Preview {
    BottomToolbar(modal: .constant(.stickerModal))
}
