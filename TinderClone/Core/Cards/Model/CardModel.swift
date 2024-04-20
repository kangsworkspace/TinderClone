//
//  CardModel.swift
//  TinderClone
//
//  Created by Healthy on 4/18/24.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable, Hashable {
    var id: String { return user.id }
}
