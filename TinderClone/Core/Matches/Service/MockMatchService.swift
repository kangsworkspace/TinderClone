//
//  MockMatchService.swift
//  TinderClone
//
//  Created by Healthy on 4/21/24.
//

import Foundation

struct MockMatchService: MatchServiceProtocol {
    func fetchMatches() async throws -> [Match] {
        return MockData.matches
    }
}
