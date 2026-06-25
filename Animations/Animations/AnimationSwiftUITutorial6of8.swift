//
//  AnimationSwiftUITutorial6of8.swift
//  Animations
//
//  Created by Karol Kusowski on 25/06/2026.
//

import SwiftUI

struct AnimationSwiftUITutorial6of8: View {
    @State private var dragAmount = CGSize.zero
    var body: some View {
        LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(.rect(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged { dragAmount = $0.translation }
                    .onEnded { _ in
                        withAnimation(.bouncy) {
                            dragAmount = .zero
                        }
                    }
            )
//            .animation(.bouncy, value: dragAmount)
    }
}

#Preview {
    AnimationSwiftUITutorial6of8()
}
