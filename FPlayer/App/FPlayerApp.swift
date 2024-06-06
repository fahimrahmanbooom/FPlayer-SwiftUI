//
//  FPlayerApp.swift
//  FPlayer
//
//  Created by Fahim Rahman on 6/6/24.
//

import SwiftUI

@main
struct FPlayerApp: App {
    
    @EnvironmentObject var globalState: GlobalState
    @StateObject private var settings = Settings()
    
    var body: some Scene {
        WindowGroup {
            FTabView()
                .environmentObject(settings)
                .preferredColorScheme(self.settings.isDarkMode ? .dark : .light)
        }
    }
}
