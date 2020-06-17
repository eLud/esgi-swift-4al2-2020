//
//  Restaurant.swift
//  MealApp
//
//  Created by Ludovic Ollagnier on 17/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import Foundation

class Restaurant {

    let name: String
    private var menu: Set<Meal>

    init(name: String, menu: Set<Meal> = []) {
        self.name = name
        self.menu = menu
    }

    func add(_ meal: Meal) {
        menu.insert(meal)
    }

    func remove(_ meal: Meal) {
        menu.remove(meal)
    }

    func list() -> [Meal] {
        return menu.sorted()
    }
}
