//
//  GlobalState.swift
//  FPlayer
//
//  Created by Fahim Rahman on 6/6/24.
//

import SwiftUI
import Combine

class GlobalState: ObservableObject {
    @Published var isPopupBarPresented: Bool = false
    @Published var isPopupOpen: Bool = false
}

class Settings: ObservableObject {
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
}
