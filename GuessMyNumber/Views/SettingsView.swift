//
//  SettingsView.swift
//  GuessMyNumber
//
//  Created by Pedro Rodrigues on 06/01/2025.
//

import SwiftUI

struct SettingsView: View {
    @ObservedObject var viewModel: GameViewModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 30) {
                Text("Settings")
                    .font(DesignConstants.titleFont)
                    .foregroundColor(DesignConstants.textColor)
                
                DifficultySelector(difficulty: $viewModel.difficulty)
                
                VStack(alignment: .leading, spacing: 15) {
                    InfoRow(title: "Max Tries", value: "\(viewModel.difficulty.maxTries)")
                    InfoRow(title: "Number Range", value: "\(viewModel.difficulty.range.lowerBound) - \(viewModel.difficulty.range.upperBound)")
                }
                    .padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top, 20)
        }
        .background(DesignConstants.backgroundColor.ignoresSafeArea())
        .accessibilityLabel("Settings View")
    }
}

#Preview {
    SettingsView(viewModel: GameViewModel())
}

