//
//  ItemRepository.swift
//  Itema
//
//  Created by viredefbmac_19 on 10/11/25.
//

import Foundation
import SwiftData

final class ItemRepository {
    private let context: ModelContext

    init(context: ModelContext) {
        self.context = context
    }

    func fetchAll() -> [DataItem] {
        let descriptor = FetchDescriptor<DataItem>()
        do {
            return try context.fetch(descriptor)
        } catch {
            print("Erro ao buscar itens: \(error)")
            return []
        }
    }

    func add(_ item: DataItem) {
        context.insert(item)
        save()
    }

    func update(_ item: DataItem) {
        save()
    }

    func delete(_ item: DataItem) {
        context.delete(item)
        save()
    }

    func deleteAll() {
        let all = fetchAll()
        for item in all {
            context.delete(item)
        }
        save()
    }

    private func save() {
        do {
            try context.save()
        } catch {
            print("Erro ao salvar alterações: \(error)")
        }
    }
}
