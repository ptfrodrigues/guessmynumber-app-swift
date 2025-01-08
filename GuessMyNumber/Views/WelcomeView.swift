//
//  WelcomeView.swift
//  GuessMyNumber
//
//  Created by Pedro Rodrigues on 06/01/2025.
//

import SwiftUI

struct WelcomeView: View {
    let startGame: () -> Void
    @State private var isAnimating = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // Background Image
                Image("b2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .clipped()
                
                VStack(spacing: 40) {
                    Spacer()
                    
                    Text("Whats Your\nNumbers")
                          .font(.system(size: 48, weight: .bold, design: .rounded))
                          .foregroundColor(.white)
                          .multilineTextAlignment(.center)
                          .padding()
                          .frame(maxWidth: .infinity)
                          .cornerRadius(10)
                    
                    Spacer()
                    
                    Button(action: startGame) {
                        Text("Start Game")
                            .font(DesignConstants.buttonFont)
                            .foregroundColor(DesignConstants.primaryColor)
                            .padding(.horizontal, 40)
                            .padding(.vertical, 15)
                            .background(.white)
                            .clipShape(Capsule())
                    }
                    .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
                    
                    Spacer()
                }
                .padding()
            }
        }
        .edgesIgnoringSafeArea(.all)
        .opacity(isAnimating ? 1 : 0)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

#Preview {
    WelcomeView(startGame: {})
}



#Preview {
    WelcomeView(startGame: {})
        .background(DesignConstants.backgroundColor)
}

