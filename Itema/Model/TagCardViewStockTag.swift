//
//  TagCardViewStockTag.swift
//  Itema
//
//  Created by iredefbmac_20 on 29/10/25.
//

import SwiftUI

struct TagCardViewStockTag {
    let imageName: String
    let name: String      
}

struct TagCard: View {
    var tag: TagCardViewStockTag
    
    var body: some View {
        VStack {
            Image(tag.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
            Text(tag.name)
                .font(.body)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
        }
        .padding()
        .frame(width: 120, height: 120)
        .background(Color(UIColor.systemGray6))
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 2)
    }
}
