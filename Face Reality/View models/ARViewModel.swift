//
//  ARViewModel.swift
//  Face Reality
//
//  Created by livia on 21/07/23.
//

import Foundation
import RealityKit
import SwiftUI
import ARKit

class ARViewModel: UIViewController, ObservableObject, ARSessionDelegate {
    @Published private var model : ARModel = ARModel()
    @Published var emotions: Emotions = .Joy
    @Published var smileMuscles: SmileMuscles = SmileMuscles()
//    @Published var genuineSmileMuscles = GenuineSmileMuscles()
    @Published var sadnessMuscles: SadnessMuscles = SadnessMuscles()
    @Published var angerMuscles: AngerMuscles = AngerMuscles()
    @Published var surpriseMuscles: SurpriseMuscles = SurpriseMuscles()
    @Published var disgustMuscles: DisgustMuscles = DisgustMuscles()



    
    func startSessionDelegate() {
        model.arView.session.delegate = self
        
    }
    
    func session(_ session: ARSession, didUpdate anchors: [ARAnchor]) {
        if let faceAnchor = anchors.first as? ARFaceAnchor {
            model.update(faceAnchor: faceAnchor)
        }
    }
    
    var arView : ARView {
        model.arView
    }
    
    var isSmiling: Bool {
        var smileHelper = false
        if model.smileLeft > 0.3 || model.smileRight > 0.3 {
            smileHelper = true
        }
        return smileHelper
        
    }
    
    var genuineSmiling: Bool {
        var genSmileHelper = false
        if model.smileLeft > 0.3 && model.smileRight > 0.3 && model.squintLeft > 0.15 && model.squintRight > 0.15 {
            genSmileHelper = true
        }
        return genSmileHelper
    }
    
    var isScowling: Bool {
        var scowlHelper = false
        if model.sneerLeft > 0.17 && model.sneerRight > 0.17 && model.squintLeft > 0.05 && model.squintRight > 0.05 || model.shrugLower > 0.3 {

            scowlHelper = true
        }
        
        return scowlHelper
    }
    
    var isScared: Bool {
        var scaredHelper = false
        if model.wideLeft > 0.3 && model.wideRight > 0.3 {
            
            scaredHelper = true
        }
        
        return scaredHelper
    }
    var isDisgusted: Bool {
        var disgustedHelper = false
        if model.sneerLeft > 0.2 && model.sneerRight > 0.2 {
            
            disgustedHelper = true
        }
        
        return disgustedHelper
    }
    var isFrowning: Bool {
        var frownHelper = false
        if model.browInnerUp > 0.2 || model.mouthRollUpper > 0.2 || model.frownLeft > 0.2 || model.frownRight > 0.2 {
            
            frownHelper = true
        }
        
        return frownHelper
    }
    
    func smileChecker() -> String {
        if self.isSmiling {
            if self.genuineSmiling {
                return "Sorriso genuíno! 🤩"
            }
            else {
                return "Sorrindo 😊"
            }
        }
        else {
            return "Neutro 😐"
        }
    }
    
    func sadnessChecker() -> String {
        if self.isFrowning {
            return "Tristeza 😭"
        }
        else {
            return "Neutro 😐"
        }
    }
    
    func scowlChecker() -> String {
        if self.isScowling {
            return "Raiva! 😡"
        }
        else {
            return "Neutro 😐"
            
        }
    }
    
    func surprisedChecker() -> String {
        if self.isScared {
            return "Surpresa! 😮"
        }
        return "Neutro 😐"
        
    }
    
    func disgustChecker() -> String {
        if self.isDisgusted {
            return "Nojo! 🥴"
        }
        return "Neutro 😐"
    }
}
