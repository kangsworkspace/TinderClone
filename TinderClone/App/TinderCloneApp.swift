//
//  TinderCloneApp.swift
//  TinderClone
//
//  Created by Healthy on 4/10/24.
//

import SwiftUI

@main
struct TinderCloneApp: App {
    @StateObject var matchManager = MatchManager(service: MockMatchService())
    
    var body: some Scene {
        WindowGroup {
           MainTabView()
                .environmentObject(matchManager)
        }
    }
}
