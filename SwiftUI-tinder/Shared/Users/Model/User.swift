//
//  User.swift
//  SwiftUI-tinder
//
//  Created by Daniel Giao on 2024-09-15.
//

import Foundation

struct User: Identifiable, Hashable {
    let id: String
    let fullname: String
    var age: Int
    var profileImageURLs: [String]
}
