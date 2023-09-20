//
//  AppDelegate.swift
//  Face Reality
//
//  Created by livia on 21/07/23.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct MyApp: App {
    @State private var showOnboarding = false
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
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
                ContentView()
//            }
        }
    }
}
