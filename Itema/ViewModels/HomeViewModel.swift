//
//  HomeViewModel.swift
//  Itema
//
//  Created by iredefbmac_19 on 05/11/25.
//

import Foundation
import Combine
import SwiftUI

final class HomeViewModel: ObservableObject {
    @Published var items: [Item] = []
    @Published var filteredItems: [Item] = []
    @Published var searchText: String = "" {
        
        
        didSet {
            var applyFilter: String? = nil
            
            applyFilter = searchText
        }
        
    }
    @Published var isLoading: Bool = false
    
    
    private var cancellables = Set<AnyCancellable>()
    private let repository: ItemRepositoryProtocol
    
    
    init(repository: ItemRepositoryProtocol = ItemRepository()) {
        self.repository = repository
        loadItems()
    }
    
    // Função para carregar dados
    func loadItems() {
        isLoading = true
        self.items = filteredItems
        Task {
            do {
                let result = try await repository.fetchItems()
                await MainActor.run {
                    self.items = result
                    self.filteredItems = result
                    self.isLoading = false
                    
                }
            }catch {
                await MainActor.run { self.isLoading = false }
            }
        }
    }
    
    //essa parte aqui e as func dos botao
    func newRecordTapped() {
        print("Novo registro")
    }
    
    
    func newStockTapped() {
        print("Novo estoque")
    }
    
    
    func viewRecordsTapped() {
        print("Ver registros")
    }
    

}

