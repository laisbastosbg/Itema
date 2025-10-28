//
//  ItemaApp.swift
//  Itema
//
//  Created by Lais Godinho on 21/10/25.
//

import SwiftUI
import SwiftData

@main
struct ItemaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Tag.self])
    }
}
