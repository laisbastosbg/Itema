//
//  ActionButtonView.swift
//  Itema
//
//  Created by iredefbmac_20 on 30/10/25.
//

import SwiftUI

struct ActionButtonView: View {

    let title: String
    let systemImage: String
    let action: () -> Void

    @State private var isPressed = false

    var body: some View {
        Button {
            action()
        } label: {
            VStack(spacing: 8) {
                Image(systemName: systemImage)
                    .font(.system(size: 28))

                Text(title)
                    .font(.headline)
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, minHeight: 90)
            .background(Color.blue)
            .cornerRadius(12)
            .scaleEffect(isPressed ? 0.96 : 1)
            .animation(.easeInOut(duration: 0.15), value: isPressed)
        }
        .buttonStyle(.plain)
        .simultaneousGesture(
            DragGesture(minimumDistance: 0)
                .onChanged { _ in isPressed = true }
                .onEnded { _ in isPressed = false }
        )
    }
}


