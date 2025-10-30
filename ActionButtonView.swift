//
//  ActionButtonView.swift
//  Itema
//
//  Created by iredefbmac_20 on 30/10/25.
//

import SwiftUI

struct ActionButtonView: View {
    let icon: String
    let title: String
    let action: () -> Void
    
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withAnimation(.spring(response: 0.2, dampingFraction: 0.6)) {
                isPressed = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() +0.15) {
                isPressed = false
                action()
            }
        }) {
}

