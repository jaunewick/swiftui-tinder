//
//  CardView.swift
//  SwiftUI-tinder
//
//  Created by Daniel Giao on 03/09/2024.
//

import SwiftUI

struct CardView: View {
    @State private var xOffset: CGFloat = 0
    @State private var degrees: Double = 0
    @State private var currentImageIndex = 0

    @State private var mockImages = [
        "meganFox1",
        "meganFox2",
    ]

    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                Image(mockImages[currentImageIndex])
                    .resizable()
                    .scaledToFill()
                    .overlay {
                        ImageScrollingOverlay(currentImageIndex: $currentImageIndex, imageCount: mockImages.count)
                    }

                SwipeActionIndicatorView(xOffset: $xOffset)
            }

            UserInforView()
                .padding(.horizontal)
        }
        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffset)
        .rotationEffect(.degrees(degrees))
        .animation(.snappy, value: xOffset)
        .gesture(
            DragGesture()
                .onChanged(onDragChange)
                .onEnded(onDragEnded)
        )
    }
}

private extension CardView {
    func onDragChange(_ value: _ChangedGesture<DragGesture>.Value) {
        xOffset = value.translation.width
        degrees = Double(value.translation.width / 25)
    }
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width
        if abs(width) <= abs(SizeConstants.screenCutoff) {
            xOffset = 0
            degrees = 0
        }
    }
}

#Preview {
    CardView()
}
