//
//  TabBar.swift
//  Starter
//
//  Created by Maksim on 06/03/2022.
//

import SwiftUI

struct TabBar: View {
    
    var body: some View {
        Text("Hello")
    }
    
}













//struct TabBar<Selection: Hashable>: View {
//
//    let tabs: [AnyTabView]
//    @EnvironmentObject private var obj: TabBarSelection<Selection>
//
//    var body: some View {
//        HStack {
//            ForEach(tabs) { anyTab in
//                anyTab.view
//                    .padding(20)
//                    .onTapGesture {
//                        guard let tab = anyTab.tab as? Selection else { return }
//                        withAnimation() {
//                            obj.selection = tab
//                        }
//                    }
//            }
//        }
//        .background(
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.black)
//        )
//    }
//}



//struct TabBar_Previews: PreviewProvider {
//    static let tabs = [
//        AnyTabView(view: AnyView(tabView()), tab: TabItem.home),
//        AnyTabView(view: AnyView(tabView()), tab: TabItem.profile),
//        AnyTabView(view: AnyView(tabView()), tab: TabItem.settings)
//    ]
//
//    static var previews: some View {
//        TabBar<TabItem>(tabs: tabs)
//    }
//
//    static func tabView() -> some View {
//        Image(systemName: "gear")
//            .foregroundColor(.white)
//    }
//}
