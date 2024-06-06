//
//  FPlayerView.swift
//  FPlayer
//
//  Created by Fahim Rahman on 6/6/24.
//

import SwiftUI
import LNPopupUI

struct FPlayerView: View {
    
    @EnvironmentObject var globalState: GlobalState
    @EnvironmentObject var settings: Settings
    @State private var isPlaying = true // It will be managed by audio manager class later
    @State private var progress: Double = 0.7 // It will be managed by audio manager class later
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image(systemName: "die.face.1.fill")
                .resizable()
                .foregroundStyle(self.settings.isDarkMode ? .white : .black)
                .frame(width: 300, height: 300, alignment: .center)
                .padding(.bottom, 50)
            
            HStack {
                Text("Wherever You Will Go")
                    .font(.title3)
                    .foregroundStyle(self.settings.isDarkMode ? .white : .black)
                    .bold()
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Image(systemName: "heart.fill")
                        .foregroundStyle(.cyan)
                }

            }
            .padding(.horizontal)
            
            HStack {
                Text("The Calling")
                    .font(.subheadline)
                    .foregroundStyle(self.settings.isDarkMode ? .white : .black).opacity(0.8)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Slider(value: $progress, in: 0...1)
                .tint(.cyan)
                .padding(.horizontal)
            
            HStack {
                Text("2:36")
                    .font(.caption)
                    .foregroundStyle(self.settings.isDarkMode ? .white : .black).opacity(0.8)
                
                Spacer()
                
                Text("3:28")
                    .font(.caption)
                    .foregroundStyle(self.settings.isDarkMode ? .white : .black).opacity(0.8)
            }
            .padding(.horizontal)
            
            HStack {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundStyle(Color(red: 44/255, green: 163/255, blue: 226/255))
                })
                .padding(.horizontal)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "play.circle.fill")
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .center)
                        .foregroundStyle(Color(red: 44/255, green: 163/255, blue: 226/255))
                })
                .padding(.horizontal)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundStyle(Color(red: 44/255, green: 163/255, blue: 226/255))
                })
                .padding(.horizontal)
                
                
            }
            .padding()
            
            Spacer()
        }
        .popupTitle(verbatim: "Wherever You Will Go", subtitle: "The Calling")
        .popupImage(Image(systemName: "die.face.1.fill"))
        .popupProgress(7/10)
        .popupHapticFeedbackEnabled(true)
        .popupBarItems({
            
            Button(action: {
                
            }) {
                Image(systemName: "gobackward.10")
                    .resizable()
                    .frame(width: 16, height: 17, alignment: .center)
                    .foregroundStyle(Color(red: 44/255, green: 163/255, blue: 226/255))
            }
            
            Button(action: {
                
            }) {
                Image(systemName: "backward.end.fill")
                    .resizable()
                    .frame(width: 15, height: 15, alignment: .center)
                    .foregroundStyle(Color(red: 44/255, green: 163/255, blue: 226/255))
            }
            
            Button(action: {
                self.isPlaying.toggle()
            }) {
                Image(systemName: self.isPlaying ? "pause.circle.fill" : "play.circle.fill")
                    .frame(width: 20, height: 20, alignment: .center)
                    .foregroundStyle(Color(red: 44/255, green: 163/255, blue: 226/255))
            }
            
            Button(action: {
                
            }) {
                Image(systemName: "forward.end.fill")
                    .resizable()
                    .frame(width: 15, height: 15, alignment: .center)
                    .foregroundStyle(Color(red: 44/255, green: 163/255, blue: 226/255))
            }
            
            Button(action: {
                self.globalState.isPopupBarPresented.toggle()
            }) {
                Image(systemName: "xmark.circle.fill")
                    .resizable()
                    .frame(width: 20, height: 20, alignment: .center)
                    .foregroundStyle(self.settings.isDarkMode ? .white : .black).opacity(0.5)
            }
            .padding(.leading)
        })
    }
}

#Preview {
    FPlayerView()
}
