//
//  CardModel.swift
//  SwiftUI-tinder
//
//  Created by Daniel Giao on 2024-09-15.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable, Hashable {
    var id: String {return user.id}
}
