//
//  LedgrApp.swift
//  Ledgr
//
//  Created by Saahil Rahman on 19/08/2026.
//

import SwiftUI
import SwiftData

@main
struct LedgrApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        
        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    var body: some Scene {
        WindowGroup {
            TabView{
                DashboardView()
                    .tabItem{
                        Label("Dashboard" , systemImage: "house")
                    }
                Text("Trends")
                    .tabItem{
                        Label("Trends", systemImage: "chart.line.uptrend.xyaxis")
                    }
            }
        }
        .modelContainer(sharedModelContainer)
    }
}
