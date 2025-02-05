//
//  SingleCardView.swift
//  Cards
//
//  Created by Roshan Bade on 05/02/2025.
//

import SwiftUI

struct SingleCardView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var currentModal: ToolbarSelection?
    
    var body: some View {
        NavigationStack {
            Color.yellow
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
}

#Preview {
    SingleCardView()
}
