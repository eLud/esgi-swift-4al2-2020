//
//  ContentView.swift
//  MealApp
//
//  Created by Ludovic Ollagnier on 17/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

let farine = Aliment(name: "Farine", allergens: [.gluten], isVegan: true, isVeggie: true)
let tomate = Aliment(name: "Tomate", allergens: [], isVegan: true, isVeggie: true)

let pizza = Meal(name: "Pizza Reine", price: 12.5, pitch: "Une super pizza", category: .main, components: [farine, tomate], calories: 300)
let pizza2 = Meal(name: "Pizza 3 fromages", price: 12.5, pitch: "Une super pizza", category: .main, components: [farine, tomate], calories: 300)
let calzone = Meal(name: "Calzone", price: 11, pitch: nil, category: .main, components: nil, calories: nil)

struct ContentView: View {

    var meal = calzone

    var body: some View {
        Text(meal.name)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
