//
//  RoundedTab.swift
//  CustomTabView
//
//  Created by Maksim on 05/03/2022.
//

import SwiftUI

struct RoundedTab: View {
    
    let imageName: String
    let selected: Bool
    let namespace: Namespace.ID
    
    var body: some View {
        Image(systemName: imageName)
            .foregroundColor(.white.opacity(selected ? 1 : 0.2))
            .background(
                ZStack {
                    if selected {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white.opacity(0.3))
                            .matchedGeometryEffect(id: "background_rect", in: namespace)
                            .frame(width: 50, height: 50)
                    }
                }
            )
    }
}
