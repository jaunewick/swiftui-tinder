//
//  MainTabBar.swift
//  SwiftUI-tinder
//
//  Created by Daniel Giao on 03/09/2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            CardStackView()
                .tabItem {Image(systemName: "flame")}
                .tag(0)

            Text("Search View")
                .tabItem {Image(systemName: "magnifyingglass")}
                .tag(1)

            Text("Inbox View")
                .tabItem {Image(systemName: "bubble")}
                .tag(2)

            CurrrentUserProfileView(user: MockData.users[1])
                .tabItem {Image(systemName: "person")}
                .tag(3)
        }
        .tint(.pink)
    }
}

#Preview {
    MainTabView()
}
