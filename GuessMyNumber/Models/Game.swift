//
//  Game.swift
//  GuessMyNumber
//
//  Created by Pedro Rodrigues on 06/01/2025.
//

import Foundation

struct Game {
    private(set) var target: Int
    private(set) var guesses: [Int] = []
    let difficulty: Difficulty
    
    var isOver: Bool { guesses.count >= difficulty.maxTries || guesses.contains(target) }
    var remainingTries: Int { difficulty.maxTries - guesses.count }
    var range: ClosedRange<Int> { difficulty.range }
    
    init(difficulty: Difficulty) {
        self.difficulty = difficulty
        self.target = Int.random(in: difficulty.range)
    }
    
    mutating func makeGuess(_ guess: Int) -> String {
        guesses.append(guess)
        if guess == target {
            return "Congratulations! You guessed it!"
        } else if isOver {
            return "Game over! The number was \(target)"
        } else {
            let comparison = guess < target ? "Higher" : "Lower"
            return "\(comparison)!"
        }
    }
    
    func isValidGuess(_ guess: Int) -> Bool {
        return difficulty.range.contains(guess)
    }
}

