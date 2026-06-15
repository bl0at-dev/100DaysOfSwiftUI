//
//  Day24 Challenge.swift
//  ViewsAndModifiers
//
//  Created by Karol Kusowski on 15/06/2026.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.blue)
    }
}

extension View {
    func prominentTitle() -> some View {
        modifier(TitleModifier())
    }
}

struct Day24_Challenge: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .prominentTitle()
    }
}

#Preview {
    Day24_Challenge()
}
