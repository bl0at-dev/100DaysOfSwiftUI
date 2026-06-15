//
//  ViewsAndModifiersApp.swift
//  ViewsAndModifiers
//
//  Created by Karol Kusowski on 14/06/2026.
//

import SwiftUI

@main
struct ViewsAndModifiersApp: App {
    var body: some Scene {
        WindowGroup {
            CustomModifiers()
            CustomContainers()
            ViewsAsProperties()
            EnvironmentModifiers()
            ConditionalModifiers()
            WhyDoesSwiftUiUse_some_View_ForItsViewType()
            WhyModifierOrderMatters()
            Day24_Challenge()
        }
    }
}
