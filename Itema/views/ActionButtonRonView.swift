//
//  ActionButtonRonView.swift
//  Itema
//
//  Created by iredefbmac_20 on 19/12/25.
//

import SwiftUI

struct ActionButtonRowView: View {

    let viewModel: ActionButtonViewModel

    var body: some View {
        HStack(spacing: 16) {

            ActionButtonView(
                title: "Novo Registro",
                systemImage: "plus.circle",
                action: {
                    viewModel.newRecordTapped()
                }
            )

            ActionButtonView(
                title: "Novo Estoque",
                systemImage: "shippingbox",
                action: {
                    viewModel.newStockTapped()
                }
            )

            ActionButtonView(
                title: "Visualizar",
                systemImage: "doc.text.magnifyingglass",
                action: {
                    viewModel.viewRecordsTapped()
                }
            )
        }
        .padding()
    }
}
