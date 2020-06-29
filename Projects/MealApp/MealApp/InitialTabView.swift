//
//  InitialTabView.swift
//  MealApp
//
//  Created by Ludovic Ollagnier on 19/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct InitialTabView: View {
    var body: some View {
        TabView {
            MealList()
                .tabItem {
                    Text("Meals")
                    Image(systemName: "list.bullet")
            }
            Text("Ma commande")
                .tabItem {
                    Text("Cart")
                    Image(systemName: "cart")
            }
        }
    }
}

struct InitialTabView_Previews: PreviewProvider {
    static var previews: some View {
        InitialTabView()
    }
}
