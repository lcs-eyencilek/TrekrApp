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
            
            TabView {
                
                NavigationView {
                    LocationList(store: store)
                }.tabItem {
                    Image(systemName: "list.bullet")
                    Text("Location")
                }
                
                NavigationView {
                    WorldMap()
                }.tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
                
                NavigationView {
                    TipsList()
                }.tabItem {
                    Image(systemName: "person.fill.questionmark")
                    Text("Tips")
                }
            }
            
        }
    }
}
