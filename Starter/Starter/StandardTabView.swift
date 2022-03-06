//
//  StandardTabView.swift
//  Starter
//
//  Created by Maksim on 06/03/2022.
//

import SwiftUI

struct StandardTabView: View {
    @State private var selection = TabItem.home
    
    var body: some View {
        TabView(selection: $selection) {
            
            Color.red
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
//                    Circle() //<- it won't show
//                        .foregroundColor(.red)
//                        .frame(width: 30, height: 30)
                }
            
            Color.green
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag("Two")
            
            Color.blue
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

struct StandardTabView_Previews: PreviewProvider {
    static var previews: some View {
        StandardTabView()
    }
}
