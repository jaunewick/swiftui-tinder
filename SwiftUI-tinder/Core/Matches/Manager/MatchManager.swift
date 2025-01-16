//
//  MatchManager.swift
//  SwiftUI-tinder
//
//  Created by Daniel Giao on 2025-01-16.
//

import Foundation

@MainActor
class MatchManager: ObservableObject {
    @Published var matchedUser: User?

    func checkForMatch(withUser user: User) {
        let didMatch = Bool.random()

        if didMatch {
            matchedUser = user
        }
    }
}
