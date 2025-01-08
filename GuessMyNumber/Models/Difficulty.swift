//
//  Difficulty.swift
//  GuessMyNumber
//
//  Created by Pedro Rodrigues on 06/01/2025.
//

import Foundation

enum Difficulty: String, CaseIterable, Identifiable {
    case easy, medium, unreal
    
    var id: String { self.rawValue }
    
    var range: ClosedRange<Int> {
        switch self {
        case .easy: return 1...50
        case .medium: return 1...100
        case .unreal: return 1...10000
        }
    }
    
    var maxTries: Int {
        switch self {
        case .easy: return 10
        case .medium: return 7
        case .unreal: return 1
        }
    }
}

