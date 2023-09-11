//
//  AppNavigation.swift
//  Face Reality
//
//  Created by mvitoriapereirac on 08/09/23.
//

import SwiftUI
import Charts


struct AppNavigation: View {
    
    @ObservedObject var coordinator = Coordinator()
    
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            selectScreen
        }
        .environmentObject(coordinator)
        .navigationBarBackButtonHidden(true)
        
    }
    private var selectScreen: some View {
        
        OnboardingView()
            .navigationDestination(for: Route.self){ route in
                switch route {
                case .ARview:
                    FRContentView().navigationBarBackButtonHidden(true)
                case .musclesView:
                    ContentView().navigationBarBackButtonHidden(true)
                    //move to unity view
                case .menu:
                    ContentView().navigationBarBackButtonHidden(true)
                }
            }
    }
}
