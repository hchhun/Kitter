//
//  CardService.swift
//  Kitter
//
//  Created by Hoksolinda Chhun on 2025-01-12.
//

import Foundation

struct CardService {
    func fetchCardModels() async throws -> [CardModel] {
        let users = MockData.users
        return users.map({ CardModel(user: $0)})
    }
}
