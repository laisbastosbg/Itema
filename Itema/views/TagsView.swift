//
//  TagsView.swift
//  Itema
//
//  Created by iredefbmac_18 on 09/12/25.
//

import SwiftUI

struct TagsView: View {
    let tags = [
        TagCardViewStockTag(imageName: "keyboard", name: "Teclado"),
        TagCardViewStockTag(imageName: "display", name: "Monitor")
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                ForEach(tags, id: \.name) {
                    tag in
                    NavigationLink{
                        TagItemsView(tag: tag)
                    } label: {
                        TagCard(tag: tag)
                    }
                    
                }
                
            }
            .navigationTitle("Tags")
            
        }
        
    }
        
}



