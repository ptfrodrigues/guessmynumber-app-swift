//
//  ContentView.swift
//  GuessMyNumber
//
//  Created by Pedro Rodrigues on 06/01/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = GameViewModel()
    @State private var showWelcome = true
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack {
            DesignConstants.backgroundColor.edgesIgnoringSafeArea(.all)
            
            if showWelcome {
                WelcomeView {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        showWelcome = false
                    }
                }
            } else {
                VStack {
                    TabView(selection: $selectedTab) {
                        GameView(viewModel: viewModel)
                            .tag(0)
                        
                        SettingsView(viewModel: viewModel)
                            .tag(1)
                    }
                    .tabViewStyle(.page(indexDisplayMode: .never))
                    .animation(.default, value: selectedTab)
                    
                    NavigationBar(selectedTab: $selectedTab)
                        .padding(.bottom, 20)
                }
            }
        }
    }
}



#Preview {
    ContentView()
}


