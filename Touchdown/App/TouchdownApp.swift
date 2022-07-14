//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Todd James on 7/10/22.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
              .environmentObject(Shop())
        }
    }
}
