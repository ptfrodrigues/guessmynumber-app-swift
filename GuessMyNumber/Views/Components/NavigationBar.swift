//
//  NavigationBar.swift
//  GuessMyNumber
//
//  Created by Pedro Rodrigues on 06/01/2025.
//

import SwiftUI

struct NavigationBar: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack {
            navigationButton(imageName: "gamecontroller", text: "Game", tag: 0)
            navigationButton(imageName: "gearshape", text: "Settings", tag: 1)
        }
        .padding()
        .background(DesignConstants.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .shadow(color: DesignConstants.cardShadow, radius: 5, x: 0, y: 2)
        .ignoresSafeArea(edges: .bottom)
    }
    
    @ViewBuilder
    private func navigationButton(imageName: String, text: String, tag: Int) -> some View {
        NavigationButton(imageName: imageName, text: text, isSelected: selectedTab == tag)
            .onTapGesture { selectedTab = tag }
    }
}

#Preview {
    NavigationBar(selectedTab: .constant(0))
        .padding()
        .background(DesignConstants.backgroundColor)
}

