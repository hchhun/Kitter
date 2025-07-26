//
//  User.swift
//  Kitter
//
//  Created by Hoksolinda Chhun on 2025-01-12.
//

import Foundation

struct User: Identifiable {
    let id: String
    let fullname: String
    var age: Int
    var profileImageURLs: [String]
}
