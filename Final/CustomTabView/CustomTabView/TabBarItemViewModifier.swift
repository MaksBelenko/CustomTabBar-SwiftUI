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

struct TabBarItemViewModifier<Selection, TabViewType>: ViewModifier where Selection: Tabable, TabViewType: View{
    
    let tab: Selection
    let viewBuilder: (Bool) -> TabViewType
    @EnvironmentObject private var selectionObject: TabBarSelection<Selection>
    
    func body(content: Content) -> some View {
        content
            .opacity(selectionObject.selection == tab ? 1 : 0)
            .preference(
                key: TabBarItemsPreferenceKey.self,
                value: [AnyTabView(
                    selected: Binding(selectionObject.$selection),
                    id: tab.tabId,
                    view: { AnyView(viewBuilder($0)) },
                    tab: tab
                )]
            )
    }
}


extension View {
    
    func tabBarItem<Selection: Tabable, Content: View>(tab: Selection, content: @escaping (Bool) -> Content) -> some View {
        modifier(TabBarItemViewModifier(tab: tab, viewBuilder: content))
    }
    
    func tabBarItem<Selection: Tabable, Content: View>(tab: Selection, content: @escaping () -> Content) -> some View {
        modifier(TabBarItemViewModifier(tab: tab, viewBuilder: { _ in content() }))
    }
    
}
