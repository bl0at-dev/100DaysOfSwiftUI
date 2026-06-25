//
//  Implicit-Animations.swift
//  Animations
//
//  Created by Karol Kusowski on 24/06/2026.
//

import SwiftUI

struct AnimationSwiftUITutorial1of8: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap me!") {
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        .animation(.default, value: animationAmount)
    }
}

#Preview {
    AnimationSwiftUITutorial1of8()
}
