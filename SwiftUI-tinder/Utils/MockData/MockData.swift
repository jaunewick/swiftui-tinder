//
//  MockData.swift
//  SwiftUI-tinder
//
//  Created by Daniel Giao on 2024-09-15.
//

import Foundation

struct MockData {
    static let users: [User] = [
        .init(
            id: NSUUID().uuidString,
            fullname: "Ana de Armas",
            age: 36,
            profileImageURLs: [
                "anaDeArmas1",
                "anaDeArmas2",
                "anaDeArmas3"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "John Wick",
            age: 50,
            profileImageURLs: [
                "johnWick1",
                "johnWick2"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Sydney Sweeney",
            age: 27,
            profileImageURLs: [
                "sydneySweeney1",
                "sydneySweeney2"
            ]
        ),
    ]
}
