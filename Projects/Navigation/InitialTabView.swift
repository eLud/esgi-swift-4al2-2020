//
//  InitialTabView.swift
//  Navigation
//
//  Created by Ludovic Ollagnier on 19/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct InitialTabView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Text("Root")
                    Image(systemName: "list.bullet")
            }
            TextView(textToDisplay: "B")
                .tabItem {
                    Text("B")
                    Image(systemName: "b.circle")
            }
            Text("C")
            .tabItem {
                    Text("C")
                    Image(systemName: "c.circle")
            }
            Text("C")
              .tabItem {
                      Text("C")
                      Image(systemName: "c.circle")
              }
            Text("C")
              .tabItem {
                      Text("C")
                      Image(systemName: "c.circle")
              }
            Text("C")
              .tabItem {
                      Text("C")
                      Image(systemName: "c.circle")
              }
            Text("C")
              .tabItem {
                      Text("C")
                      Image(systemName: "c.circle")
              }
        }
    }
}

struct InitialTabView_Previews: PreviewProvider {
    static var previews: some View {
        InitialTabView()
    }
}
