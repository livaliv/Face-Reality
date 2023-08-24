//
//  ARModel.swift
//  Face Reality
//
//  Created by livia on 21/07/23.
//

import Foundation
import RealityKit
import ARKit

struct ARModel {
    private(set) var arView : ARView
    
    init() {
        arView = ARView(frame: .zero)
        arView.session.run(ARFaceTrackingConfiguration())

    }
    
    var smileRight: Float = 0
    var smileLeft: Float = 0
    var squintRight: Float = 0
    var squintLeft: Float = 0
    var sneerRight: Float = 0
    var sneerLeft: Float = 0
    var frownRight: Float = 0
    var frownLeft: Float = 0
    var shrugLower: Float = 0
    var mouthUpperUpLeft: Float = 0
    var mouthUpperUpRight: Float = 0
    var wideLeft: Float = 0
    var wideRight: Float = 0
    var browInnerUp: Float = 0
    var mouthRollUpper: Float = 0
    
    mutating func update(faceAnchor: ARFaceAnchor){
        smileRight = Float(truncating: faceAnchor.blendShapes.first(where: {$0.key == .mouthSmileRight})?.value ?? 0)
        smileLeft = Float(truncating: faceAnchor.blendShapes.first(where: {$0.key == .mouthSmileLeft})?.value ?? 0)
        squintRight = Float(truncating: faceAnchor.blendShapes.first(where: {$0.key == .eyeSquintRight})?.value ?? 0)
        squintLeft = Float(truncating: faceAnchor.blendShapes.first(where: {$0.key == .eyeSquintLeft})?.value ?? 0)
        sneerRight = Float(truncating: faceAnchor.blendShapes.first(where: {$0.key == .noseSneerRight})?.value ?? 0)
        sneerLeft = Float(truncating: faceAnchor.blendShapes.first(where: {$0.key == .noseSneerLeft})?.value ?? 0)
        frownRight = Float(truncating: faceAnchor.blendShapes.first(where: {$0.key == .mouthFrownRight})?.value ?? 0)
        frownLeft = Float(truncating: faceAnchor.blendShapes.first(where: {$0.key == .mouthFrownLeft})?.value ?? 0)
        shrugLower = Float(truncating: faceAnchor.blendShapes.first(where: {$0.key == .mouthShrugLower})?.value ?? 0)
        mouthUpperUpLeft = Float(truncating: faceAnchor.blendShapes.first(where: {$0.key == .mouthUpperUpLeft})?.value ?? 0)
        mouthUpperUpRight = Float(truncating: faceAnchor.blendShapes.first(where: {$0.key == .mouthUpperUpRight})?.value ?? 0)
        wideRight = Float(truncating: faceAnchor.blendShapes.first(where: {$0.key == .eyeWideRight})?.value ?? 0)
        wideLeft = Float(truncating: faceAnchor.blendShapes.first(where: {$0.key == .eyeWideLeft})?.value ?? 0)
        browInnerUp = Float(truncating: faceAnchor.blendShapes.first(where: {$0.key == .browInnerUp})?.value ?? 0)
        mouthRollUpper = Float(truncating: faceAnchor.blendShapes.first(where: {$0.key == .mouthRollUpper})?.value ?? 0)

        
    }
    
}
