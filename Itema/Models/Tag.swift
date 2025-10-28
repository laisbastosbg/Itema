//
//  Tag.swift
//  Itema
//
//  Created by Francisco Juan on 27/10/25.
//
import SwiftData
import UIKit

@Model
class Tag {
    var id: UUID
    var name: String
    var image: Data?
    
    init(id: UUID = UUID(), name: String, image: UIImage?) {
        self.name = name
        self.id = id
        self.image = image?.jpegData(compressionQuality: 0.9)
    }
}
