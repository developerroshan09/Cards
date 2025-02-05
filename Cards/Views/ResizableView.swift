//
//  ResizableView.swift
//  Cards
//
//  Created by Roshan Bade on 05/02/2025.
//

import SwiftUI

struct ResizableView: View {
    
    @State private var transform = Transform()
    @State private var previousOffset: CGSize = .zero
    
    private let content = RoundedRectangle(cornerRadius: 20)
    private let color = Color.red
    
    var dragGesture: some Gesture {
        DragGesture()
            .onChanged { value in
                transform.offset = CGSize(
                    width: value.translation.width + previousOffset.width,
                    height: value.translation.height + previousOffset.height
                )
            }
            .onEnded { _ in
                previousOffset = transform.offset
            }
    }
    
    var body: some View {
        content
            .frame(width: transform.size.width, height: transform.size.height)
            .foregroundColor(color)
            .offset(transform.offset)
            .gesture(dragGesture)
    }
}

#Preview {
    ResizableView()
}
