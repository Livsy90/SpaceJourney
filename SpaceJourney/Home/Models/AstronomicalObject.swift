//
//  AstronomicalObject.swift
//  SpaceJourney
//
//  Created by Livsy on 07.11.2022.
//

import Foundation

struct AstronomicalObject: Identifiable {
    var id = UUID().uuidString
    var kind: AstronomicalObjectKind
    
    init(_ kind: AstronomicalObjectKind) {
        self.kind = kind
    }
}
