//
//  SwiftUI_tinderApp.swift
//  SwiftUI-tinder
//
//  Created by Daniel Giao on 03/09/2024.
//

import SwiftUI

@main
struct TinderApp: App {
    @StateObject var matchManager = MatchManager()

    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(matchManager)
        }
    }
}
