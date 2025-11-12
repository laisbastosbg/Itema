//
//  ContentView.swift
//  ItemCardView
//
//  Created by iredefbmac_20 on 06/11/25.
//
import SwiftUI
struct ItemCardView: View{ var body: some View
    {HStack(alignment: .center)
        { VStack(alignment: .leading){
        Image("itemcard")
                .resizable()
                .frame(width: 64, height:64)
                .scaledToFit()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(style: StrokeStyle(lineWidth: 4)).stroke(Color.gray, lineWidth:1)
                )
                
        }
            VStack(alignment: .leading) {
                Text("Nome do item")
                Text("Data") }
            Spacer()
            ZStack(alignment: .trailing){
                Image(systemName: "info.circle") }
        }
        .padding(10)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(25)
        .shadow(radius: 10) }

   }
#Preview { ItemCardView() }

