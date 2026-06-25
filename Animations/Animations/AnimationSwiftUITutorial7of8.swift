//
//  AnimationSwiftUITutorial7of8.swift
//  Animations
//
//  Created by Karol Kusowski on 25/06/2026.
//

import SwiftUI

struct AnimationSwiftUITutorial7of8: View {
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap me!") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
            
        }
    }
}

#Preview {
    AnimationSwiftUITutorial7of8()
}
