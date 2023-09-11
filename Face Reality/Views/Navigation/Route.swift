//
//  Route.swift
//  Face Reality
//
//  Created by mvitoriapereirac on 08/09/23.
//

import Foundation
 
enum Route: String, Codable, Identifiable {
    case menu
    case ARview
    case musclesView

    var id: String { self.rawValue }
}
