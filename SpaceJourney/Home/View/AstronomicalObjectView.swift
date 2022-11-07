//
//  AstronomicalObjectView.swift
//  SpaceJourney
//
//  Created by Livsy on 07.11.2022.
//

import SwiftUI
import SceneKit

struct AstronomicalObjectView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    private let node = SCNNode(geometry: SCNSphere(radius: 500.0))
    private let options: SceneView.Options = [
        .autoenablesDefaultLighting,
        .allowsCameraControl
    ]
    private var scene = SCNScene(named: "earth.usdz")
    private var img = UIImage(named: "Purple Nebula 2 - 1024x1024")
    
    init(_ kind: AstronomicalObjectKind) {
        scene = SCNScene(named: "\(kind.rawValue.capitalized).usdz")
        img = UIImage(named: kind.backgroundName)
    }
    
    var body: some View {
        let _ = node.geometry?.firstMaterial?.diffuse.contents = img
        let _ = node.geometry?.firstMaterial?.isDoubleSided = true
        let _ = scene?.rootNode.addChildNode(node)

        SceneView(scene: scene, options: options)
    }
    
}
