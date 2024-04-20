//
//  MatchManager.swift
//  TinderClone
//
//  Created by Healthy on 4/21/24.
//

import Foundation

@MainActor
class MatchManager: ObservableObject {
    @Published var matchedUser: User?
    @Published var matches = [Match]()
    
    private let service: MatchServiceProtocol
    
    init(service: MatchServiceProtocol) {
        self.service = service
    }
    
    func fetchMatches() async {
        do {
            self.matches = try await service.fetchMatches()
        } catch {
            print("error: \(error)")
        }
    }
    
    func checkForMatch(withUser user: User) {
        let didMatch =  Bool.random()
        
        if didMatch {
            matchedUser = user
        }
    }
}
