//
//  Feedback.swift
//  GuessMyNumber
//
//  Created by Pedro Rodrigues on 06/01/2025.
//

import SwiftUI

struct Feedback: View {
    let message: String
    
    var body: some View {
        Text(message)
            .font(DesignConstants.headlineFont)
            .foregroundColor(DesignConstants.textColor)
            .multilineTextAlignment(.center)
            .padding()
            .frame(maxWidth: .infinity)
            .background(DesignConstants.cardBackground)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .shadow(color: DesignConstants.cardShadow, radius: 5, x: 0, y: 2)
    }
}

#Preview {
    Feedback(message: "Great guess! Try a little higher.")
        .padding()
        .background(DesignConstants.backgroundColor)
}

