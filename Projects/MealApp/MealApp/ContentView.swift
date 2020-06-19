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

    var meal = pizza

    var body: some View {
           VStack(alignment: .leading) {
               Image("pizza")
                   .resizable()
                   .aspectRatio(contentMode: .fit)
               Text("Plat")
                   .padding([.horizontal], 10)
                   .padding([.vertical], 2)
                   .background(
                       RoundedRectangle(cornerRadius: 10).foregroundColor(.green))
               HStack(alignment: .firstTextBaseline) {
                   Text(meal.name)
                       .font(.title)
                   Spacer()
                   Text("\(meal.price)€")
                       .font(.headline)
                       .foregroundColor(.gray)
               }.padding()
               VStack(alignment: .leading) {
                   Text(meal.pitch ?? "Un super plat !")
                   if meal.components != nil {
                       Text("Ingredients:")
                           .font(.headline)
                           .padding([.top], 8)
                    ForEach(meal.components!.sorted( by: { $0.name > $1.name }), id: \.name) { (aliment) in
                           Text(aliment.name)
                       }
                   }
               }.padding()
               Spacer()
           }
       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
