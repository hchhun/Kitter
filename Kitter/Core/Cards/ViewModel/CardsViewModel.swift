//
//  CardsViewModel.swift
//  Kitter
//
//  Created by Hoksolinda Chhun on 2025-01-12.
//

import Foundation

class CardsViewModel: ObservableObject {
    @Published var cardModels = [CardModel]()
    
    private let service: CardService
    
    init(service: CardService) {
        self.service = service
        Task {await fetchCardModel()}
    }
    
    func fetchCardModel() async {
        do {
            self.cardModels = try await service.fetchCardModels()
        } catch {
            print("DEBUG: Failed to fetch cards with error: \(error)")
        }
    }
    
//    func removeCard(_ cardModel: CardModel) {
//        guard let index = cardModels.firstIndex(where { $0.id == $card.id}) else { return }
//        cardModels.remove(at: index)
//    }
}
