//
//  ConditionalModifiers.swift
//  ViewsAndModifiers
//
//  Created by Karol Kusowski on 14/06/2026.
//

import SwiftUI

struct ConditionalModifiers: View {
    @State private var useRedText = false
    
    var body: some View {
        
        // example 1
        Button("Hello World") {
            useRedText.toggle()
        }
        .foregroundStyle(useRedText ? .red : .blue) // What do you want to check, True, False, or “WTF” for short.
        
        // example 2
        if useRedText {
                Button("Hello World") {
                    useRedText.toggle()
                }
                .foregroundStyle(.red)
            } else {
                Button("Hello World") {
                    useRedText.toggle()
                }
                .foregroundStyle(.blue)
            }
    }
}

#Preview {
    ConditionalModifiers()
}
