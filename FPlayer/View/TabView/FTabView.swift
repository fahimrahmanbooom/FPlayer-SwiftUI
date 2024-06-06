//
//  FTabView.swift
//  FPlayer
//
//  Created by Fahim Rahman on 6/6/24.
//

import SwiftUI
import LNPopupUI

struct FTabView: View {
    
    @StateObject var globalState = GlobalState()
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Home", systemImage: "music.note.house.fill") }
            SongsView()
                .tabItem { Label("Songs", systemImage: "music.note") }
            SettingsView()
                .tabItem { Label("Settings", systemImage: "gear") }
        }
        .environmentObject(globalState)
        .popup(isBarPresented: $globalState.isPopupBarPresented, isPopupOpen: $globalState.isPopupOpen) {
            FPlayerView()
        }
        .popupBarCustomizer({ popupBar in
            popupBar.tintColor = UIColor(red: 44/255, green: 163/255, blue: 226/255, alpha: 1.0)
            popupBar.barStyle = .default
        })
        .popupBarProgressViewStyle(.top)
        .tint(.cyan)
    }
}

#Preview {
    FTabView()
}
