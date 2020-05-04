//
//  ContentView.swift
//  Activities
//
//  Created by Ludovic Ollagnier on 04/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 128, height: 128)
                    .foregroundColor(.orange)
                VStack(alignment: .leading) {
                    Text("Ludovic Ollagnier")
                        .font(.largeTitle)
                    Text("France")
                        .font(.title)
                        .foregroundColor(.secondary)
                    Spacer().frame(height: 30)
                    Text("iOS Dev")
                        .font(.headline)
//                        .padding([.top], 30)
                }
            }
            RoundedRectangle(cornerRadius: 30)
                .padding()
                .foregroundColor(.secondary)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
