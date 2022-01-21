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
                
                // Manage display on MacOS with compiler directives
                #if os(iOS)
                NavigationView {
                    WorldMap(store: store)
                }.tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
                #else
                NavigationView {
                    WorldMap(store: testStore)
                        .frame(width: 400)
                }.tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
                #endif
                
                #if os(iOS)
                NavigationView {
                    TipsList()
                }.tabItem {
                    Image(systemName: "person.fill.questionmark")
                    Text("Tips")
                }
                #else
                    TipsList()
                        .tabItem {
                            Image(systemName: "person.fill.questionmark")
                            Text("Tips")
                        }
                #endif
            }
            
        }
    }
}
