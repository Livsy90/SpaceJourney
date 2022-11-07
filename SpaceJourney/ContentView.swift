//
//  ContentView.swift
//  SpaceJourney
//
//  Created by Livsy on 07.11.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeView()
            .environmentObject(HomeViewModel())
            .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
