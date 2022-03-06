//
//  CustomTabView.swift
//  Starter
//
//  Created by Maksim on 06/03/2022.
//

import SwiftUI

struct CustomTabView: View {
    
    var body: some View {
        Text("Hello")
    }
}












//struct CustomTabView<SelectionValue, Content> : View where SelectionValue : Hashable, Content : View {
    
//    @State private var tabs = [AnyTabView]()
//    private var content: Content
//    private var selectionObservable: TabBarSelection<SelectionValue>
//
//    init(selection: Binding<SelectionValue>, @ViewBuilder content: () -> Content) {
//        self.content = content()
//        self.selectionObservable = TabBarSelection(selection: selection)
//    }
//
//    var body: some View {
//        Text("Hello")
//        ZStack(alignment: .bottom) {
//            content
//
//            TabBar<SelectionValue>(tabs: tabs)
//        }
//        .environmentObject(selectionObservable)
//        .onPreferenceChange(TabBarItemsPrefernceKey.self) { tabs in
//            self.tabs = tabs
//        }
//    }
//}

//struct CustomTabView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        CustomTabView(selection: .constant(TabItem.home)) {
//            Color.green
//
//            Color.red
//
//            Color.blue
//        }
//    }
//}
