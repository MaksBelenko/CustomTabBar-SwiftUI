//
//  TabBar.swift
//  CustomTabView
//
//  Created by Maksim on 01/03/2022.
//

import SwiftUI

struct TabBar<Selection>: View where Selection: Hashable {
    
    let tabViews: [AnyTabView]
    @EnvironmentObject private var selectionObject: TabBarSelection<Selection>
    
    var body: some View {
        HStack {
            ForEach(tabViews) { anyTab in
                anyTab.view
                    .padding(20)
                    .simultaneousGesture(
                        TapGesture()
                            .onEnded { _ in
                                guard let tab = anyTab.tab as? Selection else { return }
                                withAnimation() {
                                    selectionObject.selection = tab
                                }
                            }
                    )
            }
        }
        .background(
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(.black)
        )
        .offset(y: -10)
    }
}
