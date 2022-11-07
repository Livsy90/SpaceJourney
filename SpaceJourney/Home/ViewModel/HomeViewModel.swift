//
//  HomeViewModel.swift
//  SpaceJourney
//
//  Created by Livsy on 07.11.2022.
//

import SwiftUI

final class HomeViewModel: ObservableObject {
    @Published var items = AstronomicalObjectKind.allCases.map { AstronomicalObject($0) }
}
