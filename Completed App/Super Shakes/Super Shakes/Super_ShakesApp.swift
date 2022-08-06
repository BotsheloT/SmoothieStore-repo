//
//  Super_ShakesApp.swift
//  Super Shakes
//
//  Created by GMAN TECH on 8/15/21.
//

import SwiftUI

@main
struct Super_ShakesApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
              OnboardingView()
            } else {
                TabView {
                    ShakesListView(shake: shakesData[0])
                        .tabItem {
                            Image(systemName: "list.bullet.below.rectangle")
                            Text("Explore")
                        }
                    InfoView()
                        .tabItem {
                            Image(systemName: "gearshape")
                            Text("Info")
                        }
                }
            }
        }
    }
}
