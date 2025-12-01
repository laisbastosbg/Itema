//
//  ItemRepositoryProtocol.swift
//  Itema
//
//  Created by iredefbmac_19 on 20/11/25.
//

final class ItemRepository: ItemRepositoryProtocol {
    func fetchItems() async throws -> [Item] {
        try await Task.sleep(nanoseconds: 500)
        return
        
    }
}
