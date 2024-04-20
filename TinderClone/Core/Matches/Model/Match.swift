//
//  Match.swift
//  TinderClone
//
//  Created by Healthy on 4/21/24.
//

import Foundation

struct Match: Codable, Identifiable, Hashable {
    let id: String
    let userID: String
    let timestamp: Date
    
    var user: User?
}
