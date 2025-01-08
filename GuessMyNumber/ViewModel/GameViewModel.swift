//
//  GameViewModel.swift
//  GuessMyNumber
//
//  Created by Pedro Rodrigues on 06/01/2025.
//

import SwiftUI

@MainActor
class GameViewModel: ObservableObject {
    @Published private var game: Game
    @Published var guessInput = ""
    @Published var feedback = "Make a guess!"
    @Published var isGameOver = false
    
    var difficulty: Difficulty {
        didSet {
            restartGame()
        }
    }
    
    var guessCount: Int { game.guesses.count }
    var remainingTries: Int { game.remainingTries }
    
    init(difficulty: Difficulty = .medium) {
        self.difficulty = difficulty
        self.game = Game(difficulty: difficulty)
    }
    
    func makeGuess() {
        guard !isGameOver else { return }
        guard let guess = Int(guessInput), game.isValidGuess(guess) else {
            feedback = "Please enter a valid number within the range \(game.range)."
            return
        }
        
        feedback = game.makeGuess(guess)
        guessInput = ""
        
        if game.isOver {
            isGameOver = true
        }
    }
    
    func restartGame() {
        game = Game(difficulty: difficulty)
        feedback = "Make a guess!"
        guessInput = ""
        isGameOver = false
    }
    
    func quitApp() {
        exit(0)
    }

}

