//
//  WhyDoesSwiftUiUse“some View”ForItsViewType?.swift
//  ViewsAndModifiers
//
//  Created by Karol Kusowski on 14/06/2026.
//

import SwiftUI

struct WhyDoesSwiftUiUse_some_View_ForItsViewType: View {
    var body: some View {
        Button("Hello World") {
            print(type(of: self.body))
        }
        .frame(width: 200, height: 200)
        .background(.red)
    }
}

#Preview {
    WhyDoesSwiftUiUse_some_View_ForItsViewType()
}
