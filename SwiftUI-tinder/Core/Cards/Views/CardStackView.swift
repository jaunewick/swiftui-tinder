//
//  CardStackView.swift
//  SwiftUI-tinder
//
//  Created by Daniel Giao on 2024-09-15.
//

import SwiftUI

struct CardStackView: View {
    @StateObject var viewModel = CardsViewModel(service: CardService())
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    ForEach(viewModel.cardModels) {card in
                        CardView(viewModel: viewModel, model: card)
                    }
                }
                
                if !viewModel.cardModels.isEmpty {
                    SwipeActionButtonsView(viewModel: viewModel)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(.tinderLogo)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100)
                }
            }
        }
    }
}

#Preview {
    CardStackView()
}
