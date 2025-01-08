//
//  GameView.swift
//  GuessMyNumber
//
//  Created by Pedro Rodrigues on 06/01/2025.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var viewModel: GameViewModel
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 30) {
                Text("Guess My Number")
                    .font(DesignConstants.titleFont)
                    .foregroundColor(DesignConstants.primaryColor)

                Feedback(message: viewModel.feedback)
                
                if !viewModel.isGameOver {
                    GuessInput(viewModel: viewModel)
                    GameInfo(viewModel: viewModel)
                }
                
                Spacer()
                
                if viewModel.isGameOver {
                    HStack(spacing: 20) {
                        GameButton(
                            title: "Enough",
                            action: viewModel.quitApp,
                            backgroundColor: DesignConstants.secondaryColor
                        )
                        .frame(width: (geometry.size.width - 50) / 2)
                        
                        GameButton(
                            title: "Play Again",
                            action: viewModel.restartGame,
                            backgroundColor: DesignConstants.primaryColor
                        )
                        .frame(width: (geometry.size.width - 50) / 2)
                    }
                }
            }
            .padding()
            .frame(width: geometry.size.width, height: geometry.size.height)
            .background(DesignConstants.backgroundColor)
            .ignoresSafeArea(.keyboard, edges: .bottom)
        }
    }
}

#Preview {
    GameView(viewModel: GameViewModel())
}


