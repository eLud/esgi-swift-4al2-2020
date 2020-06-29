//
//  AddMealView.swift
//  MealApp
//
//  Created by Ludovic Ollagnier on 29/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct AddMealView: View {

    @State private var name: String = ""
    @State private var price: Double = 10.0
    @State private var category: Meal.Category = .first

    @Environment(\.presentationMode) var presentation

    var restaurant: Restaurant

    var body: some View {
        NavigationView {
            Form {
                Picker(selection: $category, label: Text("Category"), content: {
                    ForEach(Meal.Category.allCases) { cat in
                        Text(cat.rawValue)
                    }
                })
                TextField("Meal name", text: $name)
                Text("\(price) €")
                Slider(value: $price, in: 0...40, minimumValueLabel: Text("0"), maximumValueLabel: Text("40")) {
                    Text("Prix")
                }
                Section {
                    Button("Save") {
                        let meal = Meal(name: self.name, price: self.price, pitch: nil, category: self.category, components: nil, calories: nil)

                        self.restaurant.add(meal)

                        self.presentation.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
}

struct AddMealView_Previews: PreviewProvider {
    static var previews: some View {
        AddMealView(restaurant: Restaurant(name: "Demo"))
    }
}
