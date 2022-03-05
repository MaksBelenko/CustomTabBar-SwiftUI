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
            ForEach(tabViews) { view in
                view
                    .padding(20)
                    .simultaneousGesture(
                        TapGesture()
                            .onEnded { _ in
                                guard let tab = view.tab as? Selection else { return }
                                selectionObject.selection = tab
                            }
                    )
            }
        }
        .background(
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(.mint)
        )
        .offset(y: -10)
    }
}
