//
//  MainTabBar.swift
//  TinderClone
//
//  Created by Healthy on 4/11/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
           CardStackView()
                .tabItem { Image(systemName: "flame") }
                .tag(0)
            
            Text("Search View")
                .tabItem { Image(systemName: "magnifyingglass") }
                .tag(1)
            
           InboxView()
                .tabItem { 
                    Image(systemName: "bubble")
                        .renderingMode(.template)
                }
                .tag(2)
            
            CurrentUserProfileView(user: MockData.users[1])
                .tabItem { Image(systemName: "person") }
                .tag(3)
        }
        .tint(.primary)
    }
}

#Preview {
    MainTabView()
        .environmentObject(MatchManager(service: MockMatchService()))
}
