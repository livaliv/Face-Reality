//
//  AppDelegate.swift
//  Face Reality
//
//  Created by livia on 21/07/23.
//

import SwiftUI
@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            FRContentView()
                .onAppear {
                    let hasLaunchedBefore = UserDefaults.standard.bool(forKey: "hasLaunchedBefore")
                    if !hasLaunchedBefore {
                        UserDefaults.standard.set(true, forKey: "hasLaunchedBefore")
                        // Show the onboarding view
                    }
                }
        }
    }
}
