//
//  CardsApp.swift
//  Cards
//
//  Created by Roshan Bade on 05/02/2025.
//

import SwiftUI

@main
struct CardsApp: App {
    
    @StateObject var store = CardStore(defaultData: true)
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
        }
    }
}
