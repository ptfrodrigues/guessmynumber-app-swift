//
//  GuessInput.swift
//  GuessMyNumber
//
//  Created by Pedro Rodrigues on 06/01/2025.
//

import SwiftUI

struct GuessInput: View {
    @ObservedObject var viewModel: GameViewModel
    @FocusState private var isInputFocused: Bool
    
    var body: some View {
        HStack {
            TextField("Enter your guess", text: $viewModel.guessInput)
                .font(DesignConstants.bodyFont)
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.trailing)
            
            Button(action: {
                viewModel.makeGuess()
                viewModel.guessInput = ""
                isInputFocused = true
            }) {
                Image(systemName: "arrow.right.circle.fill")
                    .font(.system(size: 44))
                    .foregroundColor(DesignConstants.primaryColor)
            }
            .disabled(viewModel.guessInput.isEmpty)
        }
        .padding()
        .background(DesignConstants.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: DesignConstants.cardShadow, radius: 5, x: 0, y: 2)
    }
}

#Preview {
    GuessInput(viewModel: GameViewModel())
        .padding()
        .background(DesignConstants.backgroundColor)
}
