//
//  content.swift
//  Itema
//
//  Created by iredefbmac_19 on 10/11/25.
//
import SwiftUI
import SwiftData

struct ImplementaView: View {
    @Environment(\.modelContext) private var context
    @Query private var items: [DataItem]
    @State private var savedItem = ""
    @State private var selectedItem: DataItem?
    
    private var repository: ItemRepository {
        ItemRepository(context: context)
    }
    var body: some View {
        VStack {
            TextField("Digite algo", text: $savedItem)
                .textFieldStyle(.roundedBorder)
            //adicionar ou atualiza item
            Button(selectedItem == nil ? "Adicionar item" : "Atualizar item") {
                if let selectedItem {
                    selectedItem.name = savedItem
                    repository.update(selectedItem)
                    self.selectedItem = nil
                    
                } else {
                    let newItem = DataItem(name: savedItem)
                    repository.add(newItem)
                }
                savedItem = ""
            }
            //botao de editar
            List {
                ForEach(items) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Button("Editar") {
                            selectedItem = item
                            savedItem = item.name
                        }
                        .buttonStyle(.borderedProminent)
                    }
                }
                
                .onDelete { indexes in
                    for index in indexes {
                        repository.delete(items[index])
                    }
                }
            }
            //botao de deletar
            Button("Deletar tudo") {
                for item in items {
                    repository.delete(item)
                }
            }
        }
        .padding()
    }
}

@Model
class DataItem: Identifiable {
    var id: String
    var name: String

    init(name: String) {
        self.id = UUID().uuidString
        self.name = name
    }
}
