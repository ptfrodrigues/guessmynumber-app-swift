//
//  MainiView.swift
//  GuessMyNumber
//
//  Created by Pedro Rodrigues on 06/01/2025.
//

import SwiftUI

struct TabContentView: View {
    @ObservedObject var viewModel: GameViewModel
    @Binding var selectedTab: Int
    
    var body: some View {
        if selectedTab == 0 {
            GameView(viewModel: viewModel)
        } else {
            SettingsView(viewModel: viewModel)
        }
    }
}

