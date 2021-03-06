//
//  ContentView.swift
//  FirstUIDemo
//
//  Created by Ludovic Ollagnier on 14/04/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var isPlaying = false
    @State private var progress: Double = 0.5

    var body: some View {
        VStack {
            Text("Hello, SwiftUI")
                .italic()
                .font(.title)
                .foregroundColor(.white)
            Text("Hello again")
                .bold()
                .foregroundColor(.gray)
            Button(action: {
                self.isPlaying.toggle()
            }) {
                Image(systemName: isPlaying ? "pause.circle" : "play.circle")
                .resizable()
                .frame(width: 40, height: 40)
            }
            HStack {
                Text("\(progress)")
                    .foregroundColor(.white)
                Slider(value: $progress)
            }
            Stepper("Stepper", value: $progress, in: 0...1)
                .background(Color.white)
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
