//
//  NavigationButton.swift
//  GuessMyNumber
//
//  Created by Pedro Rodrigues on 06/01/2025.
//

import SwiftUI

struct NavigationButton: View {
    let imageName: String
    let text: String
    let isSelected: Bool
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .font(.system(size: 24))
            Text(text)
                .font(DesignConstants.bodyFont)
        }
        .foregroundColor(isSelected ? DesignConstants.primaryColor : DesignConstants.textColor)
        .frame(maxWidth: .infinity)
        .padding(.vertical, 8)
        .background(isSelected ? DesignConstants.backgroundColor : DesignConstants.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .animation(.easeInOut(duration: 0.2), value: isSelected)
    }
}

#Preview {
    NavigationButton(imageName: "gamecontroller", text: "Game", isSelected: true)
        .padding()
        .background(DesignConstants.backgroundColor)
}

