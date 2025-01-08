//
//  DifficultySelector.swift
//  GuessMyNumber
//
//  Created by Pedro Rodrigues on 07/01/2025.
//

import SwiftUI

struct DifficultySelector: View {
    @Binding var difficulty: Difficulty
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Difficulty")
                .font(DesignConstants.bodyFont.weight(.semibold))
                .foregroundColor(DesignConstants.textColor)
            
            Picker("Difficulty", selection: $difficulty) {
                ForEach(Difficulty.allCases) { difficulty in
                    Text(difficulty.rawValue.capitalized).tag(difficulty)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .background(DesignConstants.primaryColor.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .padding()
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    DifficultySelector(difficulty: .constant(.medium))
}
