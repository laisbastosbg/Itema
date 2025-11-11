//
//  ItemRepository.swift
//  Itema
//
//  Created by iredefbmac_19 on 11/11/25.
//

import SwiftData
import Foundation

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
            print("Erro ao buscar itens: (error)")
            return []
        }
    }

    func add( item: DataItem) {
        context.insert(item)
        do {
            try context.save()
        } catch {
            print("Erro ao salvar item: (error)")
        }
    }

    func update( item: DataItem) {
        do {
            try context.save()
        } catch {
            print("Erro ao atualizar item: (error)")
        }
    }

    func delete(_ item: DataItem) {
        context.delete(item)
        do {
            try context.save()
        } catch {
            print("Erro ao deletar item: (error)")
        }
    }
}
