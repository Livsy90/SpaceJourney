//
//  OffsetKey.swift
//  SpaceJourney
//
//  Created by Livsy on 07.11.2022.
//

import SwiftUI

struct OffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
