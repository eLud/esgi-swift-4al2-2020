//
//  ContentView.swift
//  ExtractingViews
//
//  Created by Ludovic Ollagnier on 17/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var trackTitle = "Hello, SwiftUI"
    @State private var trackAuthor = "Ludovic"
    @State private var isPlaying = false
    @State private var progress: Double = 0.5

    var body: some View {
        VStack {
            InfoDisplayView(trackTitle: trackTitle, trackAuthor: trackAuthor, isPlaying: isPlaying)
            ControlButtons(isPlaying: $isPlaying, progress: $progress)
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 20))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ControlButtons: View {

    @Binding var isPlaying: Bool
    @Binding var progress: Double

    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    //Go back
                }) {
                    Image(systemName: "backward")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                Button(action: {
                    self.isPlaying.toggle()
                }) {
                    Image(systemName: isPlaying ? "pause.circle" : "play.circle")
                        .resizable()
                        .frame(width: 40, height: 40)
                }
                Button(action: {
                    //go next
                }) {
                    Image(systemName: "forward")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
            }
            HStack {
                Text("\(progress)")
                    .foregroundColor(.white)
                Slider(value: $progress)
            }
        }
    }
}

