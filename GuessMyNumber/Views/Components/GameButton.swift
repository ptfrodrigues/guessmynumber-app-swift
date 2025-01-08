//
//  GameButton.swift
//  GuessMyNumber
//
//  Created by Pedro Rodrigues on 07/01/2025.
//

import SwiftUI

struct GameButton: View {
    let title: String
    let action: () -> Void
    let backgroundColor: Color
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(DesignConstants.buttonFont)
                .foregroundColor(.white)
                .padding(.horizontal, 40)
                .padding(.vertical, 15)
                .frame(maxWidth: .infinity)
                .background(backgroundColor)
                .clipShape(Capsule())
        }
        .shadow(color: backgroundColor.opacity(0.3), radius: 5, x: 0, y: 2)
        .transition(.scale.combined(with: .opacity))
    }
}


#Preview {
    VStack {
        GameButton(title: "Play Again", action: {}, backgroundColor: DesignConstants.primaryColor)
        GameButton(title: "Enought", action: {}, backgroundColor: DesignConstants.secondaryColor)
    }
    .padding()
    .previewLayout(.sizeThatFits)
}


