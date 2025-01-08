//
//  InfoRow.swift
//  GuessMyNumber
//
//  Created by Pedro Rodrigues on 07/01/2025.
//

import SwiftUI

struct InfoRow: View {
    let title: String
    let value: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(DesignConstants.bodyFont)
                .foregroundColor(DesignConstants.textColor)
            Spacer()
            Text(value)
                .font(DesignConstants.bodyFont.weight(.semibold))
                .foregroundColor(DesignConstants.primaryColor)
        }
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(title): \(value)")
    }
}

#Preview {
    InfoRow(title: "Max Tries", value: "3")
        .padding()
        .background(DesignConstants.backgroundColor)
}

