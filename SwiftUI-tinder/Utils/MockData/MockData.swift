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
            fullname: "Megan Fox",
            age: 37,
            profileImageURLs: [
                "meganFox1",
                "meganFox2"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "David Beckham",
            age: 37,
            profileImageURLs: [
                "davidBeckham1",
                "davidBeckham2"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Conor McGregor",
            age: 37,
            profileImageURLs: [
                "conorMcgregor1",
                "conorMcgregor2",
                "conorMcgregor3"
            ]
        ),
    ]
}
