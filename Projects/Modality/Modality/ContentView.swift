//
//  ContentView.swift
//  Modality
//
//  Created by Ludovic Ollagnier on 29/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var isDisplayingSheet = false
    @State private var isDisplayingAlert = false

    var body: some View {
        VStack {
            Button("Show modal sheet") {
                self.isDisplayingSheet.toggle()
            }
            Button("Show Alert") {
                self.isDisplayingAlert.toggle()
            }
        }
        .sheet(isPresented: $isDisplayingSheet) {
            NavigationView {
                Text("This is modal")
                .navigationBarTitle("Modal")
            }
        }
        .alert(isPresented: $isDisplayingAlert) {
            Alert(title: Text("This is an alert"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
