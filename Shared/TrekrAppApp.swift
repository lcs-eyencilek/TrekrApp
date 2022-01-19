//
//  TrekrAppApp.swift
//  Shared
//
//  Created by Efe Yencilek on 2022-01-18.
//

import SwiftUI

@main
struct TrekrAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LocationDetail(location: .example)
            }
        }
    }
}
