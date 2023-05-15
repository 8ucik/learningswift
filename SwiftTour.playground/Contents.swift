import UIKit

//let nickname: String? = nil
//let fullName: String = "John Doe"
//let informalGreeting = "Hi! \(nickname ?? fullName)"


//if let nickname {
//    print ("Hey! \(nickname)")
//}

//let vegatable = "cucumber in soap"
//switch vegatable {
//case "celery":
//    print("Something")
    
//case "watermelon", "potato":
//    print("Something")
    
//case let x where x.hasSuffix("soap"):
//    print("Tastes gooood!")
    
//default:
//    print("Something more than good!")
//}


/*
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
    "MyOwn": [55, 44, 3, 50, 73, 47],
]

var largest = 0


for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
 */
 /*
var total = 0
for i in 0..<4 {
    total += i
}
print(total)*/
/*
for i in 0..<100 {
    if i % 2 == 1 {
        print(i)
    }
}
*/
func greet(person: String, day: String) -> String {
    return "Hello \(person) have a good \(day)!"
}

greet(person: "Slawa", day: "Wednesday")
/*
func add(number1: Double, number2: Double) -> Double {
    return number1 + number2
}

add(number1: 20.2, number2: 44.5)
*/

/*
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        }
        else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let stats = calculateStatistics(scores: [5, 3, 100, 3, 9])
print (stats.sum)
print (stats.max)
print (stats.min)
print(stats.1)
*/
/*
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}

returnFifteen()
*/
/*
func makeIncrement() -> ((Int) -> Int) {
    func addOne(number: Int) ->  Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncrement()
increment(7)
 */
/*
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThenTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
//hasAnyMatches(list: numbers, condition: lessThenTen)

numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})


// mnozenie mapowanej listy numerow z uzyciem { }
let mappedNumbers = numbers.map ({ number in 3 * number })
print (mappedNumbers)

// sortowanie mapowanych liczb
let sortedNumbers = numbers.sorted { $0 > $1}
print(sortedNumbers)
 */

// Objects and classes
// Simple shape class
/*
class Shape {
    let exampleConstant = 1
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    func exampleFunction(value: Int) -> String {
        return "Just another example func with const: \(exampleConstant) and arg: \(value)."
    }
}

var shapeClassic = Shape()
shapeClassic.numberOfSides = 7
shapeClassic.simpleDescription()
shapeClassic.exampleConstant
shapeClassic.exampleFunction(value: 4)
*/

// Shape class with initializer
/*
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func description() -> String {
        return "The \(name) shape with \(numberOfSides)."
    }
}
var ns = NamedShape(name: "Example")
ns.numberOfSides = 5
ns.description()
*/

/* Uncomment from here to the exit uncomment
// Shape class with override func
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func description() -> String {
        return "The \(name) shape with \(numberOfSides)."
    }
}

// Inheritance from NamedShape with Sqare class
class Square : NamedShape {
    var sideLength: Double
    
    init (sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func description() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
/*
let square = Square(sideLength: 4.2, name: "Square test")
square.area()
square.description()
*/

// Experiment
// Inheritance from NamedShape with Circle class
// Make another subclass of NamedShape called Circle that takes a radius and a name as arguments to its initializer. Implement an area() and a simpleDescription() method on the Circle class.
// 1. Return diameter func (d = 2r)
// 2. Return area func (area = pi * 2r^2)
/*
class Circle : NamedShape {
    let pi = Double.pi
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
    func getDiameter() -> Double {
        return 2 * radius
    }
    
    func getArea() -> Double {
        return (pi * (radius * radius))
    }
    
    override func description() -> String {
        return "The circle with \nradius:\(radius) has an area of: \(getArea()) and a diameter of: \(getDiameter())."
    }
}

// Tests
var circle = Circle(radius: 2.2, name: "Circle test")
circle.getDiameter()
circle.getArea()

*/

// Triangle example with getter and setter for properties
class EquilateralTriangle : NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func description() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
/*
var triangle = EquilateralTriangle(sideLength: 2.5, name: "Triangle")
print(triangle.perimeter) // get
triangle.perimeter = 9.9 // set, the newValue is used
print(triangle.sideLength)
triangle.description()
*/


// An class which uses the inherited values
// For example, the class below ensures that the side length of its triangle is always the same as the side length of its square.
// borrowing from the square class
let square = Square(sideLength: 4.2, name: "Square test")
class TriangleAndSquare {
    var triangle : EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

// tests:
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
// Prints "10.0"
print(triangleAndSquare.triangle.sideLength)
// Prints "10.0"
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)
// Prints "50.0"


//When working with optional values, you can write ? before operations like methods, properties, and subscripting. If the value before the ? is nil, everything after the ? is ignored and the value of the whole expression is nil.
let optionalSquare: Square? = Square(sideLength: 2.5, name: "Optional square")
let sideLength = optionalSquare?.sideLength
 */ //Exit uncomment here.


// Enumarations and Structures
//Experiment NOT DONE? Don't know how to?
//Write a function that compares two Rank values by comparing their raw values.
enum Rank: Int {
    case ace =  1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func description() -> String {
        switch self {
        case.ace:
            return "ace"
        case.jack:
            return "jack"
        case.queen:
            return "queen"
        case.king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
    
}
    
let ace = Rank.ace
let aceRawValue = ace.rawValue
/*
let ten = Rank.ten
let tenRawValue = ten.rawValue
 //prints 10
*/

//Experiment
//Add a color() method to Suit that returns “black” for spades and clubs, and returns “red” for hearts and diamonds.
// Instead let's add to list and return a list
enum Suit {
    case spades, hearts, diamonds, clubs
    func description() -> String {
        switch self {
        case.spades:
            return "spades"
        case.hearts:
            return "hearts"
        case.diamonds:
            return "diamonds"
        case.clubs:
            return "clubs"
        }
    }
    /*
    func color() -> String {
        switch self {
        case.spades:
            return "black"
        case.clubs:
            return "black"
        
        case.diamonds:
            return "red"
        case.hearts:
            return "red"
        }
    }
    */
    // With using a dict
    func color() -> [String: String] {
        var dict: [String: String] = [:]
        switch self {
        case.spades:
            dict.updateValue(Suit.spades.description(), forKey: "Black")
        case.clubs:
            dict.updateValue(Suit.clubs.description(), forKey: "Black")
        case.diamonds:
            dict.updateValue(Suit.diamonds.description(), forKey: "Red")
        case.hearts:
            dict.updateValue(Suit.hearts.description(), forKey: "Red")
        }
        return dict
    }
}

let hearts = Suit.hearts
let heartsDesc = hearts.description()
let heartsColor = hearts.color()

let spades = Suit.spades
let spadesDesc = spades.description()
let spadesColor = spades.color()

/*
// Server response example of enums
enum ServerResponse {
    case result(String, String)
    case failure(String)
    case warn(String)
}

let success = ServerResponse.result("06:00 am", "06:05 pm")
let failure = ServerResponse.failure("Out of memory.")
let warning = ServerResponse.warn("Network is getting overloaded!")

switch warning {
case let.failure(message):
    print("Failure: \(message).")
    
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
    
case let .warn(message):
    print("Warn: \(message)")
    
}
// When using switch success the message will be case let .result(sunrise, sunset):
//print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
// When using switch warning the message will be: Warn: Network is getting overloaded!
*/

// Structs
struct Card {
    var rank: Rank
    var suit: Suit
    func description() -> String {
        return "The \(rank.description()) of \(suit.description())"
    }
    
    //Experiment TODO ?
    //Write a function that returns an array containing a full deck of cards, with one card of each combination of rank and suit.
}
// testing
let jackOfHearts = Card(rank: .jack, suit: .hearts)
let johDesc = jackOfHearts.description()

//let threeOfSpades = Card(rank: .three, suit: .spades)
//let threeOfSpadesDescription = threeOfSpades.description()


// Concurrency
//Use async to mark a function that runs asynchronously.
func fetchUserID(from server: String) async -> Int {
    if server == "primary" {
        return 97
    }
    return 501
}

//You mark a call to an asynchronous function by writing await in front of it.
func fetchUsername(from server: String) async -> String {
    let userID = await fetchUserID(from: server)
    if userID == 501 {
        return "John Appleseed"
    }
    return "Guest"
}

//Use async let to call an asynchronous function, letting it run in parallel with other asynchronous code. When you use the value it returns, write await.
func connectUser(to server: String) async {
    async let userId = fetchUserID(from: server)
    async let username = fetchUsername(from: server)
    let greeting = await "Hello, \(username), your userID is: \(userId)."
    print(greeting)
}

//Use Task to call asynchronous functions from synchronous code, without waiting for them to return.
Task {
    await connectUser(to: "primary")
}

// Protocols and Extensions
//Declaring a protocol

protocol MyProtocol {
    var description: String {get}
    mutating func adjust()
}

//Classes, enumerations, and structures can all adopt protocols.
class AdoptedClassExample : MyProtocol {
    var description: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        description += " Now 100% adjusted!"
    }
}

var adoptedClassExample1 = AdoptedClassExample()
adoptedClassExample1.adjust()
let adoptedClassExampleDesc1 = adoptedClassExample1.description

struct AdoptedClassStruct: MyProtocol {
    var description: String = "A very simple struct."
    mutating func adjust() {
        description += " (adjusted!)"
    }
}

var adoptedStruct = AdoptedClassStruct()
adoptedStruct.adjust()
let adoptedStructDesc = adoptedStruct.description

// Extensions
//Use extension to add functionality to an existing type, such as new methods and computed properties. You can use an extension to add protocol conformance to a type that’s declared elsewhere, or even to a type that you imported from a library or framework.

extension Int: MyProtocol {
    var description: String {
        return "The number: \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}

print(7.description)

//You can use a protocol name just like any other named type — for example, to create a collection of objects that have different types but that all conform to a single protocol. When you work with values whose type is a protocol type, methods outside the protocol definition aren’t available.
let protocolValue: MyProtocol = adoptedClassExample1
print(protocolValue.description)
// Prints "A very simple class.  Now 100% adjusted."
//print(protocolValue.)  // Uncomment to see the error

// Error handling
//You represent errors using any type that adopts the Error protocol.

enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

//Use throw to throw an error and throws to mark a function that can throw an error. If you throw an error in a function, the function returns immediately and the code that called the function handles the error.
func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}

//Inside the do block, you mark code that can throw an error by writing try in front of it. Inside the catch block, the error is automatically given the name error unless you give it a different name.
do {
    let printerResponse = try send(job: 1040, toPrinter: "Never has Toner")
    print(printerResponse)
} catch {
    print(error)
}

//You can provide multiple catch blocks that handle specific errors. You write a pattern after catch just as you do after case in a switch.
do {
    let printerResponse = try send(job: 1440, toPrinter: "Gutenber")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}

//Another way to handle errors is to use try? to convert the result to an optional. If the function throws an error, the specific error is discarded and the result is nil. Otherwise, the result is an optional containing the value that the function returned.
let printerSuccess = try? send(job: 2040, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1080, toPrinter: "Never has Toner")

//Use defer to write a block of code that’s executed after all other code in the function, just before the function returns. The code is executed regardless of whether the function throws an error. You can use defer to write setup and cleanup code next to each other, even though they need to be executed at different times.
var fridgeIsOpen = false
let fridgeContents = ["milk", "butter", "joghurt"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }
    
    return fridgeContents.contains(food)
}

//testing
fridgeContains("banana") // false
fridgeContains("milk") // true
print(fridgeIsOpen)

// Generics
//Write a name inside angle brackets to make a generic function or type.
func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result: [Item] = []
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}

makeArray(repeating: "something", numberOfTimes: 4)

//You can make generic forms of functions and methods, as well as classes, enumerations, and structures.
// Reimplement the Swift standard library's optional type
enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)

//Use where right before the body to specify a list of requirements — for example, to require the type to implement a protocol, to require two types to be the same, or to require a class to have a particular superclass.
func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
    where T.Element: Equatable, T.Element == U.Element
{
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
   return false
}
anyCommonElements([1, 2, 3], [3])
