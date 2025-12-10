//
//  TagItemsView.swift
//  Itema
//
//  Created by iredefbmac_18 on 09/12/25.
//

import SwiftUI

struct TagItemsView: View {
    let tag : TagCardViewStockTag
    
    var body: some View {
        VStack{
            Text("Detalhes de  \(tag.name)")
            Text("Placeholder Temporário")
                .foregroundColor(.gray)
            
        }
        .navigationTitle(tag.name)
    }
}


