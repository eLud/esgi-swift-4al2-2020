import UIKit

var str = "Hello, \nplayground"

var multiline = """
    zhfjehfjhdfv
    fhkhjfrf
    \(str)
  """

let character: Character = "J"
print(str)
print(multiline)

str.utf8.count

let a = 5
let b = 5.0

if a == Int(b) {

}

func triple(value: Int = 10) {
    print(value * 3)
}

triple(value: 5)

func multiply(_ firstNumber: Int, by secondNumber: Int) -> Int {
    return firstNumber * secondNumber
}

let result = multiply(10, by: 2)

triple()

struct Temperature {

    var celsius: Double

    //Computed property (get only)
    var fahrenheit: Double {
        return celsius * 1.8 + 32
    }

    var kelvin: Double {
        return celsius + 273.15
    }

    init(celsius: Double) {
        self.celsius = celsius
    }

    init(fahrenheit: Double) {
        celsius = (fahrenheit - 32) / 1.8
    }

    init(kelvin: Double) {
        celsius = kelvin - 273.15
    }

}

let zero = Temperature(celsius: 0)
let f32 = Temperature(fahrenheit: 32)
print(zero.fahrenheit)
print(f32.celsius)

struct Odometer {
    var count: Int

    mutating func increment() {
        count += 1
    }

    func printCount() {
        print(count)
    }
}

let firstOdometer = Odometer(count: 0)
//firstOdometer.increment()
firstOdometer.printCount()

var secondOdometer = Odometer(count: 0)
secondOdometer.increment()
secondOdometer.printCount()

struct Point {
    let x: Double
    let y: Double
}

struct Size {
    let width: Double
    let height: Double
}

struct Rectangle {
    var origin: Point
    var size: Size

    var center: Point {
        get {
            let centerX = origin.x + size.width / 2
            let centerY = origin.y + size.height / 2
            return Point(x: centerX, y: centerY)
        }

        set {
            let newOriginX = newValue.x - size.width / 2
            let newOriginY = newValue.y - size.height / 2
            origin = Point(x: newOriginX, y: newOriginY)
        }
    }
}

var myRectangle = Rectangle(origin: Point(x: 0, y: 0), size: Size(width: 10, height: 10))
print(myRectangle.center)
print(myRectangle.origin)
myRectangle.center = Point(x: 10, y: 10)

print(myRectangle.center)
print(myRectangle.origin)


enum Genre {
    case animated, action, romance, documentary, biography, thriller

    var title: String {
        switch self {
        case .animated:
            return "Animated"
        case .action:
            return "Action"
        default:
            return "Autre"
        }
    }
}
struct Movie {
    var name: String
    var releaseYear: Int
    var genre: Genre
}

let findingDory = Movie(name: "Finding Dory", releaseYear: 2005, genre: .animated)
findingDory.genre.title

var tab: [String] = ["B", "A", "C", "A", "A"]
let at1 = tab[1]
tab.count

tab.append("D")


var dico: [String:Int] = ["Ludovic" : 10, "Paul" : 20]
let score = dico["Paul"]

dico["Robert"] = 30
dico["Robert"] = 40

let set: Set<String> = ["B", "A", "C", "A", "A"]
set.count
Set(tab)

for letter in tab.enumerated() {
    print(letter.element, letter.offset)
}

repeat {

} while tab.isEmpty

class Shoe: CustomStringConvertible {

    let color: String
    let size: Int
    let hasLaces: Bool

    init(color: String, size: Int, hasLaces: Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }

    var description: String {
        return "Shoe(color: \(color), size: \(size), hasLaces: \(hasLaces))"
    }
}

let myShoe = Shoe(color: "Red", size: 42, hasLaces: true)
print(myShoe)

struct Employee: Hashable, Comparable {

    let firstName: String
    let lastName: String
    let jobTitle: String
    let phoneNumber: String

    static func ==(lhs: Employee, rhs: Employee) -> Bool {
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName
    }

    static func < (lhs: Employee, rhs: Employee) -> Bool {
        return lhs.lastName < rhs.lastName
    }
}

protocol Flying {
    var maxAltitude: Int { get }
    var currentAltitude: Int { get set }

    func takeOff()
    func land()
}

struct Bird: Flying {

    var age: Int
    var specie: String
    var maxAltitude: Int
    var currentAltitude: Int = 0

    func takeOff() {

    }

    func land() {

    }
}

class Plane: Flying {

    var company: String
    var model: String
    var maxAltitude: Int
    var currentAltitude: Int

    init(company: String, model: String, maxAlt: Int) {
        self.company = company
        self.model = model
        self.maxAltitude = maxAlt
        self.currentAltitude = 0
    }

    func takeOff() {

    }

    func land() {

    }
}

let aBird = Bird(age: 1, specie: "Mouette", maxAltitude: 1000)
let plane = Plane(company: "AF", model: "A380", maxAlt: 10000)

let sky: [Flying] = [aBird, plane]

for truc in sky {
    truc.land()
}
