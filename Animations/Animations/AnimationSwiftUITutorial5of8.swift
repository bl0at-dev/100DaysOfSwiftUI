//
//  AnimationSwiftUITutorial5of8.swift
//  Animations
//
//  Created by Karol Kusowski on 25/06/2026.
//

import SwiftUI

struct AnimationSwiftUITutorial5of8: View {
    @State private var enabled = false
    
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .foregroundStyle(.white)
        .animation(.default, value: enabled)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .animation(.spring(duration: 1, bounce: 0.6), value: enabled)
    }
}

#Preview {
    AnimationSwiftUITutorial5of8()
}
