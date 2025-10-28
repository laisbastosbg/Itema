//
//  ContentView.swift
//  Itema
//
//  Created by Lais Godinho on 21/10/25.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    // Mockando os dados assim como solicitado em Issues #25
    let container = try! ModelContainer(
        for: Tag.self,
        configurations: ModelConfiguration(isStoredInMemoryOnly: true)
    )

    let image = UIImage(systemName: "tag.fill")!
        .withTintColor(.orange, renderingMode: .alwaysOriginal)

    let mockTags = [
        Tag(name: "Computadores", image: image),
        Tag(name: "Cabos", image: image),
        Tag(name: "Monitores", image: image)
    ]
    mockTags.forEach { container.mainContext.insert($0) }

    return ContentView()
        .modelContainer(container)
}
