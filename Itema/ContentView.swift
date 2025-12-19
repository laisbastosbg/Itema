//
//  ContentView.swift
//  Itema
//
//  Created by Lais Godinho on 21/10/25.
//

import SwiftUI

struct ContentView: View {

    private let viewModel = ActionButtonViewModel()

    var body: some View {
        VStack {
            ActionButtonRowView(viewModel: viewModel)
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}

