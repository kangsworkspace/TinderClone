//
//  User.swift
//  TinderClone
//
//  Created by Healthy on 4/18/24.
//

import Foundation

struct User: Codable, Identifiable, Hashable {
    let id: String
    let fullName: String
    var age: Int
    var profileImageURLs: [String]
}

extension User {
    var firstName: String {
        let component = fullName.components(separatedBy: " ")
        return component[0]
    }
}
