import UIKit

struct Meal: Hashable, Comparable, CustomStringConvertible {

    enum Category {
        case first, main, desert, drink
    }

    let name: String
    var price: Double
    var pitch: String
    let category: Category

    let components: Set<Aliment>
    let calories: Double

    var allergens: Set<Allergen> {
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

struct Aliment: Hashable {
    let name: String
    let allergens: Set<Allergen>
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

let farine = Aliment(name: "Farine", allergens: [.gluten], isVegan: true, isVeggie: true)
let tomate = Aliment(name: "Tomate", allergens: [], isVegan: true, isVeggie: true)

let pizza = Meal(name: "Pizza Reine", price: 12.5, pitch: "Une super pizza", category: .main, components: [farine, tomate], calories: 300)
let pizza2 = Meal(name: "Pizza 3 fromages", price: 12.5, pitch: "Une super pizza", category: .main, components: [farine, tomate], calories: 300)

let chezConfiné = Restaurant(name: "Chez confiné", menu: [pizza])
chezConfiné.add(pizza2)

print(chezConfiné.list())
