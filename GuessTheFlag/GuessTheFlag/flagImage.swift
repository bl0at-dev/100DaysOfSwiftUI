//
//  flagImage.swift
//  GuessTheFlag
//
//  Created by Karol Kusowski on 15/06/2026.
//

import SwiftUI

struct flagImage: View {
    var name: String
    
    var body: some View {
        Image(name)
            .clipShape(.capsule)
            .shadow(radius: 5)
    }
}

#Preview {
    flagImage(name: "Poland")
}
