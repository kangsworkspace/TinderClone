//
//  MatchService.swift
//  TinderClone
//
//  Created by Healthy on 4/21/24.
//

import Foundation

protocol MatchServiceProtocol {
    func fetchMatches() async throws -> [Match]
}

struct MatchService: MatchServiceProtocol {
    func fetchMatches() async throws -> [Match] {
        
        return []
    }
}
