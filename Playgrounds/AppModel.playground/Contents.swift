import UIKit

struct Meal {

    let name: String
    let price: Double
    let description: String
    let category: String

    let components: [Aliment]
    let calories: Double

    var allergens: [String] {
        return []
    }
    var isVegan: Bool {
        return true
    }
    var isVeggie: Bool {
        return true
    }

}

struct Aliment {
    let name: String
    let allergens: String
    let isVegan: Bool
    let isVeggie: Bool
}

struct Restaurant {

    let name: String
    private let menu: [Meal]

    func add(_ meal: Meal) {

    }

    func remove(_ meal: Meal) {

    }

    func list() -> [Meal] {
        return menu
    }
}
