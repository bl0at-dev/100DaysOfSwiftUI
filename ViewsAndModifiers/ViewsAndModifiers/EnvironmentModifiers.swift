//
//  EnvironmentModifiers.swift
//  ViewsAndModifiers
//
//  Created by Karol Kusowski on 14/06/2026.
//

import SwiftUI

struct EnvironmentModifiers: View {
    var body: some View {
        Spacer()
        
        VStack {
            Text("Gryffindor")
                .font(.largeTitle)
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .font(.title) // environment modifier, which means the Gryffindor text view can override it with a custom font.
        
        Spacer()
        
        VStack {
            Text("Gryffindor")
                .blur(radius: 0)
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .blur(radius: 5) // regular modifier, so any blurs applied to child views are added to the VStack blur rather than replacing it.
        
        Spacer()
    }
}

#Preview {
    EnvironmentModifiers()
}
