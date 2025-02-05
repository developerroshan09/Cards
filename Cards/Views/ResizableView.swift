//
//  ResizableView.swift
//  Cards
//
//  Created by Roshan Bade on 05/02/2025.
//

import SwiftUI

struct ResizableView: View {
    
    @State private var transform = Transform()
    
    private let content = RoundedRectangle(cornerRadius: 20)
    private let color = Color.red
    
    var body: some View {
        content
            .frame(width: transform.size.width, height: transform.size.height)
            .foregroundColor(color)
    }
}

#Preview {
    ResizableView()
}
