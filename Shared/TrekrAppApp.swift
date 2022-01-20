//
//  TrekrAppApp.swift
//  Shared
//
//  Created by Efe Yencilek on 2022-01-18.
//

import SwiftUI

@main
struct TrekrAppApp: App {
    
    @StateObject var store = LocationStore()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LocationList(store: store)
            }
        }
    }
}
