//
//  ResizableView.swift
//  Cards
//
//  Created by Roshan Bade on 05/02/2025.
//

import SwiftUI

struct ResizableView: ViewModifier {
    
    @Binding var transform: Transform
    @State private var previousRotation: Angle = .zero
    @State private var previousOffset: CGSize = .zero
    @State private var scale: CGFloat = 1.0
    
    var dragGesture: some Gesture {
        DragGesture()
            .onChanged { value in
                transform.offset = value.translation + previousOffset
            }
            .onEnded { _ in
                previousOffset = transform.offset
            }
    }
    
    var rotationGesture: some Gesture {
        RotationGesture()
            .onChanged { rotation in
                transform.rotation += rotation - previousRotation
                previousRotation = rotation
            }
            .onEnded { _ in
                previousRotation = .zero
            }
    }
    
    var scaleGesture: some Gesture {
        MagnificationGesture()
            .onChanged { scale in
                self.scale = scale
            }
            .onEnded { scale in
                transform.size.width *= scale
                transform.size.height *= scale
                self.scale = 1.0
            }
    }
    
    func body(content: Content) -> some View {
        content
            .frame(width: transform.size.width, height: transform.size.height)
            .rotationEffect(transform.rotation)
            .offset(transform.offset)
            .gesture(dragGesture)
            .gesture(SimultaneousGesture(rotationGesture, scaleGesture))
            .scaleEffect(scale)
            .onAppear {
                previousOffset = transform.offset
            }
    }
}

extension View {
    func resizableView(transform: Binding<Transform>) -> some View {
        modifier(ResizableView(transform: transform))
    }
}

#Preview {
    RoundedRectangle(cornerRadius: 30)
        .foregroundColor(Color.blue)
        .resizableView(transform: .constant(Transform()))
}
