//
//  TabBarItemViewModifier.swift
//  CustomTabView
//
//  Created by Maksim on 01/03/2022.
//

import SwiftUI

struct TabBarItemsPreferenceKey: PreferenceKey {
    
    static var defaultValue: [AnyTabView] = []
    
    static func reduce(value: inout [AnyTabView], nextValue: () -> [AnyTabView]) {
        value += nextValue()
    }
    
}

struct TabBarItemViewModifier<Selection, TabViewType>: ViewModifier where Selection: Hashable, TabViewType: View{
    
    let tab: Selection
    let viewBuilder: () -> TabViewType
    @EnvironmentObject private var selectionObject: TabBarSelection<Selection>
    
    func body(content: Content) -> some View {
        content
            .opacity(selectionObject.selection == tab ? 1 : 0)
            .preference(
                key: TabBarItemsPreferenceKey.self,
                value: [AnyTabView(view: AnyView(viewBuilder()), tab: tab)]
            )
    }
}


extension View {
    
    func tabBarItem<Selection: Hashable, Content: View>(tab: Selection, @ViewBuilder content: @escaping () -> Content) -> some View {
        modifier(TabBarItemViewModifier(tab: tab, viewBuilder: content))
    }
    
}
