//
//  ContentView.swift
//  CustomTabView
//
//  Created by Maksim on 01/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = TabItem.home
    
    var body: some View {
        CustomTabView(selection: $selection) {
            Color.red
                .tabBarItem(tab: TabItem.home) {
                    Image(systemName: "house")
//                    Text("Home")
                }
            
            Color.green
                .tabBarItem(tab: TabItem.profile) {
                    Image(systemName: "person")
//                    Text("Profile")
                }
                .tag("Two")
            
            Color.blue
                .tabBarItem(tab: TabItem.settings) {
                    Image(systemName: "gear")
//                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
