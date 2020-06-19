//
//  StaticList.swift
//  Lists
//
//  Created by Ludovic Ollagnier on 19/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct StaticList: View {
    var body: some View {
        List {
            Text("Hello List")
            Text("Goddbye list")
            Image(systemName: "plus")
        }
    }
}

struct StaticList_Previews: PreviewProvider {
    static var previews: some View {
        StaticList()
    }
}
