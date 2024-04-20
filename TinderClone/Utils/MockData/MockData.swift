//
//  MockData.swift
//  TinderClone
//
//  Created by Healthy on 4/18/24.
//

import Foundation

struct MockData {
    static let users: [User] = [
        .init(
            id: NSUUID().uuidString,
            fullName: "Megan Fox",
            age: 37,
            profileImageURLs: [
                "female1",
                "female2"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "Mac Book",
            age: 24,
            profileImageURLs: [
                "female3",
                "female4"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "I Pad",
            age: 24,
            profileImageURLs: [
                "female4",
                "female5"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "David Be",
            age: 24,
            profileImageURLs: [
                "male1",
                "male2"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "Conor Mac",
            age: 31,
            profileImageURLs: [
                "male3",
                "male4"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "Delos Cookie",
            age: 24,
            profileImageURLs: [
                "male4",
                "male5"
            ]
        ),
    ]
}

extension MockData {
    static var matches: [Match] = [
        .init(
            id: NSUUID().uuidString,
            userID: users[0].id,
            timestamp: Date(),
            user: users[0]
        ),
        .init(
            id: NSUUID().uuidString,
            userID: users[1].id,
            timestamp: Date(),
            user: users[1]
        ),
        .init(
            id: NSUUID().uuidString,
            userID: users[2].id,
            timestamp: Date(),
            user: users[2]
        ),
    ]
}
