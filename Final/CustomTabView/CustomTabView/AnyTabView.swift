//
//  AnyTabView.swift
//  CustomTabView
//
//  Created by Maksim on 01/03/2022.
//

import SwiftUI

struct AnyTabView: View, Identifiable {
    
    let id = UUID()
    let view: AnyView
    let tab: AnyHashable
 
    var body: some View {
        view
            .id(id)
    }
}

extension AnyTabView: Equatable {
    static func == (lhs: AnyTabView, rhs: AnyTabView) -> Bool {
        lhs.id == rhs.id
    }
}
