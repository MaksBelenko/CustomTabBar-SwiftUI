//
//  RoundedTab.swift
//  Starter
//
//  Created by Maksim on 06/03/2022.
//

import SwiftUI

struct RoundedTab: View {
    
    let imageName: String
    @Binding var selection: TabItem
    let tab: TabItem
    let namespace: Namespace.ID
    
    var body: some View {
        Image(systemName: imageName)
            .foregroundColor(.white.opacity(selection == tab ? 1 : 0.4))
            .background(
                ZStack {
                    if selection == tab {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white.opacity(0.3))
                            .matchedGeometryEffect(id: "background_rect", in: namespace)
                            .frame(width: 50, height: 50)
                            .onAppear {
                                print(imageName)
                            }
                    }
                }
            )
    }
}
