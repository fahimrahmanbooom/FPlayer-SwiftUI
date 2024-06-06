//
//  SettingsView.swift
//  FPlayer
//
//  Created by Fahim Rahman on 6/6/24.
//

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var settings: Settings
    
    var body: some View {
        Button(action: {
            self.settings.isDarkMode.toggle()
        }, label: {
            Text("Tap to switch between Dark mode and Light mode")
                .foregroundStyle(Color.cyan)
        })
        .padding()
    }
}

#Preview {
    SettingsView()
}
