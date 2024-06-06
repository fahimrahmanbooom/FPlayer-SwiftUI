//
//  SongsView.swift
//  FPlayer
//
//  Created by Fahim Rahman on 6/6/24.
//

import SwiftUI

struct SongsView: View {
    
    @EnvironmentObject var globalState: GlobalState
    
    var body: some View {
        VStack {
            Button(action: {
                self.globalState.isPopupBarPresented = true
            }, label: {
                Text("Tap me!")
                    .font(.subheadline).bold()
                    .foregroundStyle(.cyan)
            })
            .padding()
        }
    }
}

#Preview {
    SongsView()
}
