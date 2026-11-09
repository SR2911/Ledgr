//
//  LedgrApp.swift
//  Ledgr
//
//  Created by Saahil Rahman on 19/08/2026.
//

import SwiftUI


@main
struct LedgrApp: App {
    @State private var expenses: [Expense] = []
    var body: some Scene {
        WindowGroup {
            TabView{
                DashboardView()
                    .tabItem{
                        Label("Home" , systemImage: "house")
                    }
                Text("Trends")
                    .tabItem{
                        Label("Trends", systemImage: "chart.line.uptrend.xyaxis")
                    }
                Text("Split")
                    .tabItem{
                        Label("Split", systemImage: "percent")
                    }
                BudgetView()
                    .tabItem{
                        Label("Budget", systemImage: "wallet.bifold")
                    }
                Text("Settings")
                    .tabItem {
                        Label("Settings",systemImage: "gearshape")
                    }
            }
        }
    }
}
