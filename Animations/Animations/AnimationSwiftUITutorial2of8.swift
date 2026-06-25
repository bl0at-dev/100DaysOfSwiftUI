//
//  AnimationSwiftUITutorial2of8.swift
//  Animations
//
//  Created by Karol Kusowski on 24/06/2026.
//

import SwiftUI

struct AnimationSwiftUITutorial2of8: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap me!") {
//            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(.easeOut(duration: 1).repeatForever(autoreverses: false), value: animationAmount)
        )
        .onAppear {
            animationAmount = 2
        }
    }
}

#Preview {
    AnimationSwiftUITutorial2of8()
}
