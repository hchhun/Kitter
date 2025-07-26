//
//  MockData.swift
//  Kitter
//
//  Created by Hoksolinda Chhun on 2025-01-12.
//

import Foundation

struct MockData {
    static let users: [User] = [
        .init(
            id: NSUUID().uuidString,
            fullname: "Optimus Prime",
            age: 2,
            profileImageURLs: ["squintcat"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "James Fancypants",
            age: 4,
            profileImageURLs: ["gentlemancat"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Steve",
            age: 7,
            profileImageURLs: ["humancat"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Salami",
            age: 2,
            profileImageURLs: ["closeupcat"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Bjork",
            age: 4,
            profileImageURLs: ["nonchalantcat"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Drywall",
            age: 4,
            profileImageURLs: ["thousandyardstarecat"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Skidmark",
            age: 3,
            profileImageURLs: ["judgementalcat"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "X Æ A-Xii",
            age: 5,
            profileImageURLs: ["nerdcat"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Moose",
            age: 4,
            profileImageURLs: ["normalcat", "moose2"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Chicken Lasagna",
            age: 3,
            profileImageURLs: ["thugcat"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Oye",
            age: 3,
            profileImageURLs: ["oye", "oye2", "oye3"]
        ),
    ]
}
