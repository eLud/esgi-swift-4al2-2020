//
//  FormDemo.swift
//  Lists
//
//  Created by Ludovic Ollagnier on 19/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct FormDemo: View {

    @State private var name = ""
    @State private var isOK = true
    @State private var birthDate = Date()

    var body: some View {
        Form {
            Text("Hello")
            TextField("Name", text: $name)
            Section(header: Text("Some infos")) {
                Toggle(isOn: $isOK) {
                      Text("Are U OK?")
                  }
                  DatePicker(selection: $birthDate) {
                      Text("Birth date")
                  }
            }
            Section(footer: Text("Don't forget to save")) {
                Button("Save") {

                }
            }
        }
    }
}

struct FormDemo_Previews: PreviewProvider {
    static var previews: some View {
        FormDemo()
    }
}
