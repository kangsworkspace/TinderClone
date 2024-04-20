//
//  CardImageIndicatorView.swift
//  TinderClone
//
//  Created by Healthy on 4/18/24.
//

import SwiftUI

struct CardImageIndicatorView: View {
    let currentImageIndex: Int
    let imageCount: Int
    
    var body: some View {
        HStack {
            ForEach(0 ..< imageCount, id: \.self) { index in
                Capsule()
                    .foregroundStyle(currentImageIndex == index ? .white : .gray)
                    .frame(width: imageIndicatorWidth, height: 4)
                    .padding(.top, 8)
            }
        }
    }
}

#Preview {
    CardImageIndicatorView(currentImageIndex: 1, imageCount: 3)
}

private extension CardImageIndicatorView {
    var imageIndicatorWidth: CGFloat {
        return SizeContants.cardWidth / CGFloat(imageCount) - 28
    }
}
