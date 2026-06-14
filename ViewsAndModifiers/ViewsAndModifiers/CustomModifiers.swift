//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Karol Kusowski on 14/06/2026.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.capsule)
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct CustomModifiers: View {
    var body: some View {
        Color.red
            .frame(width: 300, height: 200)
            .watermarked(with: "Hacking with Swift")
    }
}

#Preview {
    CustomModifiers()
}
