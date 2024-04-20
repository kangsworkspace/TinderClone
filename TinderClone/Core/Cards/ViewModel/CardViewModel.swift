//
//  CardViewModel.swift
//  TinderClone
//
//  Created by Healthy on 4/18/24.
//

import Foundation

@MainActor
class CardViewModel: ObservableObject {
    @Published var cardModelds = [CardModel]()
    @Published var buttonSwipeAction: SwipeAction?
    
    private let service: CardService
    
    init(service: CardService) {
        self.service = service
        
        Task {
            await fetchCardModels()
        }
    }
    
    func fetchCardModels() async {
        do {
            self.cardModelds = try await service.fetchCardModels()
        } catch {
            print("Failed to fetch cards with error: \(error)")
        }
    }
    
    func removeCard(_ card: CardModel) {
        guard let index = cardModelds.firstIndex(where: { $0.id == card.id }) else { return }
        cardModelds.remove(at: index)
    }
}
