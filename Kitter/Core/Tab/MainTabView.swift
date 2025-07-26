//
//  MainTabView.swift
//  Kitter
//
//  Created by Hoksolinda Chhun on 2025-01-12.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Swiping View")
                .tabItem {Image(systemName: "cat")}
                .tag(0)
            
            Text("Search View")
                .tabItem {Image(systemName: "magnifyingglass")}
                .tag(1)
            
            Text("Inbox View")
                .tabItem {Image(systemName: "bubble")}
                .tag(2)
            
            Text("Profile View")
                .tabItem {Image(systemName: "person")}
                .tag(3)
        }
        .tint(.purple)
    }
}

#Preview {
    MainTabView()
}
