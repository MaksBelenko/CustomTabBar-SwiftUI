//
//  TabBarSelection.swift
//  Starter
//
//  Created by Maksim on 06/03/2022.
//

import SwiftUI

class TabBarSelection<SelectionValue>: ObservableObject where SelectionValue: Hashable {
    
    @Binding var selection: SelectionValue
    
    init(selection: Binding<SelectionValue>) {
        self._selection = selection
    }
}
