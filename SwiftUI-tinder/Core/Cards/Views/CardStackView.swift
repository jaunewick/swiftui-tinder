//
//  CardStackView.swift
//  SwiftUI-tinder
//
//  Created by Daniel Giao on 2024-09-15.
//

import SwiftUI

struct CardStackView: View {
    var body: some View {
        ZStack {
            ForEach(0 ..< 10) {card in
                CardView()
            }
        }
    }
}

#Preview {
    CardStackView()
}
