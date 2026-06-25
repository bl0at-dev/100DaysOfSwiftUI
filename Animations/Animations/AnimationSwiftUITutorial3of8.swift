//
//  AnimationSwiftUITutorial3of8.swift
//  Animations
//
//  Created by Karol Kusowski on 24/06/2026.
//

import SwiftUI

struct AnimationSwiftUITutorial3of8: View {
    @State private var animationAmount = 1.0
    var body: some View {
        print(animationAmount)
        
        return VStack {
            Stepper("Scale amount", value: $animationAmount.animation(
                .easeInOut(duration: 1)
                .repeatCount(3, autoreverses: true)
            ), in: 1...10)
            
            Spacer()
            
            Button("Tap me!") {
                animationAmount += 1
            }
            .padding(40)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
        }
        .padding()
    }
}

#Preview {
    AnimationSwiftUITutorial3of8()
}
