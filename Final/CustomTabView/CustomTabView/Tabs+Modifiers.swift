//
//  Tabs+Modifiers.swift
//  CustomTabView
//
//  Created by Maksim on 06/03/2022.
//

import SwiftUI

struct TabViewBackgroundModifier<Background>: ViewModifier where Background : View {
    
    let background: Background
    
    func body(content: Content) -> some View {
        content
    }
}

extension CustomTabView {
    
    func tabBackground<Background>(_ background: Background) -> some View where Background : View {
        modifier(TabViewBackgroundModifier(background: background))
    }
    
}
