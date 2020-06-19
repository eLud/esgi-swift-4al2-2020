//
//  ContentView.swift
//  Navigation
//
//  Created by Ludovic Ollagnier on 19/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                NavigationLink(destination: TextView(textToDisplay: "Hello Navigation")) {
                    Text("Hello, World!")
                }
            }
            .navigationBarTitle("Root")
        }
    }
}

struct TextView: View {

    var textToDisplay: String

    var body: some View {
        NavigationLink(textToDisplay, destination: TextView(textToDisplay: textToDisplay))
            .navigationBarTitle(textToDisplay)
        .navigationBarItems(trailing:
            HStack {
                Text("Add")
                Button("Remove") {
                    
                }
            }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
