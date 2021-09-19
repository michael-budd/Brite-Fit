//
//  briteApp.swift
//  brite
//
//  Created by Michael Budd on 8/2/21.
//

import SwiftUI

@main
struct briteApp: App {
    var body: some Scene {
        WindowGroup {
            CustomTabBar()
                .preferredColorScheme(.light)
        }
    }
}
