//
//  testeapp.swift
//  Itema
//
//  Created by iredefbmac_19 on 11/11/25.
//

import SwiftUI
import SwiftData

@main
struct testeapp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: DataItem.self)
    }
}
