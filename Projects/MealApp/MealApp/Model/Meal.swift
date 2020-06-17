//
//  Meal.swift
//  MealApp
//
//  Created by Ludovic Ollagnier on 17/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import Foundation

struct Meal: Hashable, Comparable, CustomStringConvertible {

    enum Category {
        case first, main, desert, drink
    }

    let name: String
    var price: Double
    var pitch: String?
    let category: Category

    let components: Set<Aliment>?
    let calories: Double?

    var allergens: Set<Allergen>? {
        guard let components = components else { return nil }

        let allergens = components.flatMap { (aliment) in
            return aliment.allergens
        }
        return Set(allergens)
    }
    var isVegan: Bool {
        return true
    }
    var isVeggie: Bool {
        return true
    }

    static func < (lhs: Meal, rhs: Meal) -> Bool {
        return lhs.name < rhs.name
    }

    var description: String {
        return "\(name) : \(price)€"
    }
}
