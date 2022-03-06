//
//  AnyTabView.swift
//  CustomTabView
//
//  Created by Maksim on 01/03/2022.
//

import SwiftUI

struct AnyTabView: Identifiable {
    
    var id: AnyHashable { tab }
    let view: AnyView
    let tab: AnyHashable
 
}

extension AnyTabView: Equatable {
    static func == (lhs: AnyTabView, rhs: AnyTabView) -> Bool {
        lhs.id == rhs.id
    }
}
