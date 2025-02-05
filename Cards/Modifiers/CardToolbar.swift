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
    
    func body(content: Content) -> some View {
        content
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Text("Done")
                            .font(.subheadline)
                            .fontWeight(.bold)
                    }
                }
                
                ToolbarItem(placement: .bottomBar) {
                    BottomToolbar(modal: $currentModal)
                }
            }
            .sheet(item: $currentModal) { item in
                switch item {
                default:
                    Text(String(describing: item))
                }
            }
    }
}

extension View {
    func cardToolbar(modal: Binding<ToolbarSelection?>) -> some View {
        modifier(CardToolbar(currentModal: modal))
    }
}
