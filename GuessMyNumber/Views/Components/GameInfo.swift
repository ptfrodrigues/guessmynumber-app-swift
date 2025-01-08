//
//  GameInfo.swift
//  GuessMyNumber
//
//  Created by Pedro Rodrigues on 06/01/2025.
//

import SwiftUI

struct GameInfo: View {
    @ObservedObject var viewModel: GameViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            InfoRow(title: "Remaining Tries", value: "\(viewModel.remainingTries)")
            InfoRow(title: "Difficulty", value: viewModel.difficulty.rawValue.capitalized)
        }
        .padding()
        .background(DesignConstants.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: DesignConstants.cardShadow, radius: 5, x: 0, y: 2)
    }
}

#Preview {
    GameInfo(viewModel: GameViewModel())
        .padding()
        .background(DesignConstants.backgroundColor)
}




