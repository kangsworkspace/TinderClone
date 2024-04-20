//
//  CardService.swift
//  TinderClone
//
//  Created by Healthy on 4/18/24.
//

import Foundation

struct CardService {
    func fetchCardModels() async throws -> [CardModel] {
        let users = MockData.users
        return users.map({ CardModel(user: $0) })
    }
}
