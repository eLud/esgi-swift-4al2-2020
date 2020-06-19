//
//  DynamicList.swift
//  Lists
//
//  Created by Ludovic Ollagnier on 19/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct DynamicList: View {

    let names: [String] = ["Catalina", "Mojave", "Hello"]

    var body: some View {
        List(names, id: \.self) { name in
            Text(name)
        }
    }
}

struct DynamicList_Previews: PreviewProvider {
    static var previews: some View {
        DynamicList()
    }
}
