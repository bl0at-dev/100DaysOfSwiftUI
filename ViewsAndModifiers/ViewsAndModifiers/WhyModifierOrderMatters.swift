//
//  WhyModifierOrderMatters.swift
//  ViewsAndModifiers
//
//  Created by Karol Kusowski on 14/06/2026.
//

import SwiftUI

struct WhyModifierOrderMatters: View {
    var body: some View {
        Spacer()
        
        VStack {
            Button("Hello, world!") {
                print(type(of: self.body))
            }
            .background(.red)
            .frame(width: 200, height: 200)
        }
        
        Spacer()
        
        VStack {
            Button("Hello, world!") {
                print(type(of: self.body))
            }
            .frame(width: 200, height: 200)
            .background(.red)
        }
        
        Spacer()
        
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding()
                .background(.red)
                .padding()
                .background(.blue)
                .padding()
                .background(.green)
                .padding()
                .background(.yellow)
        }
        
        Spacer()
    }
}

#Preview {
    WhyModifierOrderMatters()
}
