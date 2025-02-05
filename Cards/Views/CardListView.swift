//
//  CardListView.swift
//  Cards
//
//  Created by Roshan Bade on 05/02/2025.
//

import SwiftUI

struct CardListView: View {
    @State private var isPresented = false
    
    var list: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(1..<10) { _ in
                    CardThumbnail()
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
}

