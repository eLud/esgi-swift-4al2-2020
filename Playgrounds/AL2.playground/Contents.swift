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



