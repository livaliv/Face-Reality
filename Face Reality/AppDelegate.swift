//
//  AppDelegate.swift
//  Face Reality
//
//  Created by livia on 21/07/23.
//

import SwiftUI

@main
struct MyApp: App {
    @State private var showOnboarding = false
    
    var body: some Scene {
        WindowGroup {
//            if !showOnboarding {
//                FRContentView()
//                    .onAppear {
//                        let hasLaunchedBefore = UserDefaults.standard.bool(forKey: "hasLaunchedBefore")
//                        if !hasLaunchedBefore {
//                            showOnboarding = true
//                            UserDefaults.standard.set(true, forKey: "hasLaunchedBefore")
//                        }
//                    }
//            } else {
                OnboardingView()
//            }
        }
    }
}

