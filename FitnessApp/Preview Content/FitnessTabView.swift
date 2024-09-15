//
//  FitnessTabView.swift
//  FitnessApp
//
//  Created by John Leahy on 2024-09-14.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selectedTab = "Home"
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = .green
        UITabBar.appearance().standardAppearance = appearance
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag("Home")
                .tabItem { Image(systemName: "house") }
            HistoricDataView()
                .tag("Historic Data")
                .tabItem { Image(systemName: "chart.line.uptrend.xyaxis") }
        }
    }
}

#Preview {
    FitnessTabView()
}
