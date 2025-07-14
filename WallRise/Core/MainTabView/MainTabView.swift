//
//  MainTabView.swift
//  WallRise
//
//  Created by Vahan Muradyan on 14.07.25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        tabView
    }
}

// MARK: - Private API

private extension MainTabView {
    @ViewBuilder var tabView: some View {
        TabView {
            homeView
            favoritesView
            settingsView
        }
    }
    
    @ViewBuilder var homeView: some View {
        HomeView()
            .tabItem {
                Label("Walls", systemImage: "list.dash")
            }
    }
    
    @ViewBuilder var favoritesView: some View {
        FavoritesView()
            .tabItem {
                Label("Favorites", systemImage: "list.dash")
            }
    }
    
    @ViewBuilder var settingsView: some View {
        SettingsView()
            .tabItem {
                Label("Favorites", systemImage: "list.dash")
            }
    }
}

#Preview {
    MainTabView()
}
