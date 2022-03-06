//
//  TabBarItemViewModifier.swift
//  Starter
//
//  Created by Maksim on 06/03/2022.
//

import SwiftUI






















//struct TabBarItemsPrefernceKey: PreferenceKey {
//
//    static var defaultValue: [AnyTabView] = []
//
//    static func reduce(value: inout [AnyTabView], nextValue: () -> [AnyTabView]) {
//        value += nextValue()
//    }
//
//}
//
//struct TabBarItemViewModifier<Selection, TabViewType>: ViewModifier where Selection: Hashable, TabViewType: View {
//
//    let tab: Selection
//    let tabView: TabViewType
//    @EnvironmentObject private var obj: TabBarSelection<Selection>
//
//    func body(content: Content) -> some View {
//        content
//            .opacity(obj.selection == tab ? 1 : 0)
//            .preference(
//                key: TabBarItemsPrefernceKey.self,
//                value: [AnyTabView(view: AnyView(tabView), tab: tab)]
//            )
//    }
//
//}
//
//extension View {
//
//    func tabBarItem<Selection: Hashable, Content: View>(tab: Selection, content: @escaping () -> Content) -> some View {
//        modifier(TabBarItemViewModifier(tab: tab, tabView: content()))
//    }
//
//}
