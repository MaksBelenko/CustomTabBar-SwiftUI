//
//  TabItem.swift
//  CustomTabView
//
//  Created by Maksim on 01/03/2022.
//

import Foundation

protocol Tabable: Hashable {
    var tabId: String { get }
}

enum TabItem: String, Tabable {
    var tabId: String { self.rawValue }
    
    case home
    case profile
    case settings
}
