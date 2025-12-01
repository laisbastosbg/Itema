//
//  Untitled.swift
//  Itema
//
//  Created by iredefbmac_20 on 23/10/25.
//

// Models/Item.swift

import Foundation
import SwiftData

@Model
final class Item {
    // MARK: - Propriedades básicas
    
    @Attribute(.unique)
    var id: UUID
    
    var name: String
    var imageData: Data?          // MARK: miniaturas (thumbnails)
    var lastUpdated: Date
    var quantity: Int
    var minQuantity: Int
    var notes: String?
    
    //  MARK: - Inicializador
    
    init(
        id: UUID = UUID(),
        name: String,
        imageData: Data? = nil,
        lastUpdated: Date = Date(),
        quantity: Int,
        minQuantity: Int = 0,
        notes: String? = nil
    ) {
        self.id = id
        self.name = name
        self.imageData = imageData
        self.lastUpdated = lastUpdated
        self.quantity = quantity
        self.minQuantity = minQuantity
        self.notes = notes
    }
}
