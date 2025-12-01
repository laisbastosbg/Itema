//
//  testeApp.swift
//  Itema
//
//  Created by iredefbmac_19 on 10/11/25.
//
import SwiftUI
import SwiftData

@main
struct testeApp: App {
    var body: some Scene {
        WindowGroup {
            ImplementaView()
        }
        .modelContainer(for: Item.self)
    }
}
