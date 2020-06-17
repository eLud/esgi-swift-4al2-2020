//
//  Aliment.swift
//  MealApp
//
//  Created by Ludovic Ollagnier on 17/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import Foundation

struct Aliment: Hashable {
    let name: String
    let allergens: Set<Allergen>
    let isVegan: Bool
    let isVeggie: Bool
}
