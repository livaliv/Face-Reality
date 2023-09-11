//
//  Coordinator.swift
//  Face Reality
//
//  Created by mvitoriapereirac on 08/09/23.
//

import SwiftUI

public class Coordinator: ObservableObject {
    @Published var path: [Route] = []
    
    func gotoBackOnepage() {
        if path.count >= 1 {
            path.removeLast(1)

        }
    }
    
    func popView(view: Route) {
        for element in path {
            if element == view {
                path.remove(at:(path.firstIndex(of: element) ?? 0))
            }
        }
    }
    
    func goToARview() {
        path.append(.ARview)
    }
    
    func goToMusclesView() {
        path.append(.musclesView)
    }
    
    func goToMenu() {
        path.append(.menu)
    }
}
