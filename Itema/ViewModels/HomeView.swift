//
//  HomeView.swift
//  Itema
//
//  Created by iredefbmac_19 on 25/11/25.
//

import SwiftUI

struct HomeView: View {
    //aqui nos traz o file homeviwl aq
    @StateObject var viewModel = HomeViewModel()
    
    //aqui nos pega as func la do view model
    var body: some View {
        HStack(spacing: 20) {
            
            HomeButton(
                icon: "arrow.right.square",
                title: "Novo\nRegistro",
                action: viewModel.newRecordTapped
            )
            
            HomeButton(
                icon: "cube.box",
                title: "Novo\nEstoque",
                action: viewModel.newStockTapped
            )
            
            HomeButton(
                icon: "doc.text",
                title: "Visualizar\nRegistros",
                action: viewModel.viewRecordsTapped
            )
        }
        .padding()
    }
}

struct HomeButton: View {
    let icon: String
    let title: String
    let action: ()  -> Void
//aqui vai ficar o icones e os texto (to falando da estilização)
    var body: some View {
        Button(action: action) {
            VStack(spacing: 10) {
                Image(systemName: icon)
                    .font(.system(size: 27))
                    .foregroundColor(.black)
                
                Text(title)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .font(.system(size:10, weight: .bold))
                
            }
            .padding()
            .frame(width: 125, height: 115)
            .background(Color(.systemGray5))
            .cornerRadius(15)
            .shadow(radius: 2)
        }
    }
}
