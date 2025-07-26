//
//  CardModel.swift
//  Kitter
//
//  Created by Hoksolinda Chhun on 2025-01-12.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable {
    var id: String { return user.id }
}
