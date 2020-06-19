//
//  MealList.swift
//  MealApp
//
//  Created by Ludovic Ollagnier on 19/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct MealList: View {

    let resto = Restaurant(name: "Test", menu: [calzone, pizza, pizza2])

    var body: some View {
        List(resto.list()) { meal in
            Image("pizza")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            VStack(alignment: .leading) {
                Text(meal.name)
                Text(meal.pitch ?? "Une valeur sûre")
                    .font(.caption)
            }
            Spacer()
            Text("\(meal.price)€")
                .foregroundColor(.gray)
        }
    }
}

struct MealList_Previews: PreviewProvider {
    static var previews: some View {
        MealList()
    }
}
