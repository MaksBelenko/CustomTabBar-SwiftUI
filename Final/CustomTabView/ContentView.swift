//
//  ContentView.swift
//  CustomTabView
//
//  Created by Maksim on 01/03/2022.
//

import SwiftUI

//struct ContentView: View {
//    
//    @State private var selection = TabItem.home
//    
//    var body: some View {
//        CustomTabView(selection: $selection) {
//            Color.red
//                .tabBarItem(tab: TabItem.home) {
//                    Image(systemName: "house")
////                    Text("Home")
//                }
//            
//            Color.green
//                .tabBarItem(tab: TabItem.profile) {
//                    Image(systemName: "person")
////                    Text("Profile")
//                }
//                .tag("Two")
//            
//            Color.blue
//                .tabBarItem(tab: TabItem.settings) {
//                    Image(systemName: "gear")
////                    Text("Settings")
//                }
//        }
//    }
//}

struct ContentView: View {
    
    @State private var selection = TabItem.home
    @Namespace private var namespace
    
    var body: some View {
        CustomTabView(selection: $selection) {
            Color.red
                .tabBarItem(tab: TabItem.home) { selected in
                    VStack {
                        RoundedTab(imageName: "house", selected: selected, namespace: namespace)
                        
                        Circle()
                            .fill(.red)
                            .frame(width: 10, height: 10)
                    }
                }
            
            Color.green
                .tabBarItem(tab: TabItem.profile) {
                    RoundedTab(imageName: "person", selected: $0, namespace: namespace)
                }
            
            Color.blue
                .tabBarItem(tab: TabItem.settings) {
                    RoundedTab(imageName: "gear", selected: $0, namespace: namespace)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
