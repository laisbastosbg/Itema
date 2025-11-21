//
//  ContentView.swift
//  ItemCardView
//
//  Created by iredefbmac_20 on 06/11/25.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: ItemCardViewDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

#Preview {
    ContentView(document: .constant(ItemCardViewDocument()))
}
