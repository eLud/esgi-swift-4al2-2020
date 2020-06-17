//
//  ContentView.swift
//  ControlFlow
//
//  Created by Ludovic Ollagnier on 17/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var currentTemperature: Double = 20.0

    var body: some View {
        ZStack {
            backgroundColor
            VStack {
                if currentTemperature > 25 {
                    Text("Il fait chaud")
                } else {
                    Text("Il fait froid")
                }
                buildText(with: currentTemperature)
                Text("\(Int(currentTemperature))°")
                Slider(value: $currentTemperature, in: -50...50, step: 1)
            }
        }
    }

    var backgroundColor: Color {
        currentTemperature > 25 ? .red : .blue
    }

    func buildText(with temperature: Double) -> Text {
        if temperature > 25 {
            return Text("Il fait chaud")
        } else {
            return Text("Il fait froid")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Demo: View {

    var showImageInsteadOfText = true

    var body: some View {
        if showImageInsteadOfText {
            return AnyView { Image(systemName: "plus") }
        } else {
            return AnyView { Text("Hello") }
        }
    }
}

struct Demo_Previews: PreviewProvider {
    static var previews: some View {
        Demo()
    }
}
