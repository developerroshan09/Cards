//
//  ToolbarSelection.swift
//  Cards
//
//  Created by Roshan Bade on 05/02/2025.
//

import Foundation

enum ToolbarSelection: CaseIterable, Identifiable {
    case photoModal, frameModal, stickerModal, textModal
    
    var id: Int {
        hashValue
    }
}
