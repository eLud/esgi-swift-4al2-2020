import UIKit

struct Meal {

    enum Category {
        case first, main, desert, drink
    }

    let name: String
    var price: Double
    var description: String
    let category: Category

    let components: [Aliment]
    let calories: Double

    var allergens: [Allergen] {
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
    let allergens: [Allergen]
    let isVegan: Bool
    let isVeggie: Bool
}

enum Allergen {
    case gluten
    case fish
    case lactose
}

class Restaurant {

    let name: String
    private var menu: [Meal]

    init(name: String, menu: [Meal] = []) {
        self.name = name
        self.menu = menu
    }

    func add(_ meal: Meal) {

    }

    func remove(_ meal: Meal) {

    }

    func list() -> [Meal] {
        return menu
    }
}

let farine = Aliment(name: "Farine", allergens: [.gluten], isVegan: true, isVeggie: true)
let tomate = Aliment(name: "Tomate", allergens: [], isVegan: true, isVeggie: true)

let pizza = Meal(name: "Pizza Reine", price: 12.5, description: "Une super pizza", category: .main, components: [farine, tomate], calories: 300)

let chezConfiné = Restaurant(name: "Chez confiné", menu: [pizza])

print(chezConfiné.list())
