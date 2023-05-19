import UIKit

// Declaring const and vars
//Constants and variables must be declared before they’re used. You declare constants with the let keyword and variables with the var keyword.
let maximumNumberOfLoginAttempts = 10 // not changing value
var currentLoginAttempts = 0 // value to be changed

//You can declare multiple constants or multiple variables on a single line, separated by commas:
var x = 2.0, y = 0.1, z = 2.2


let myName = "Tom"
// Arrs
var ages = [22, 25, 19, 85, 40, 46, 55, 60]
// Empty array
// var ages: [Int] = []

var count = ages.count
var firstArrItem = ages.first //ages.last

ages.append(23)
ages.insert(50, at: 0)
print(ages)

ages.sort() // sorts the arr
ages.reverse() // reverse the arr but without using sort is reverses the arr with default set
print(ages)

ages.shuffle()
print(ages)

// Sets
// trade-ofs:
// unordered
// can't have duplicates
// PERFORMANCE: faster removals, inserts..
// Hashable, hashValue is an identifier

var agesForSet = [5, 10, 15, 25, 55, 25, 33, 15, 10]
//var agesSet: Set<Int> = [] // empty set
var agesSet = Set(agesForSet) // this removed the duplicates from the ages array
print(agesSet)
agesSet.insert(101)
// ages.contains(101)
print(agesSet)

// Dicitionary

// The dictionaries are dependent on the high/low letter ex. Iphone needs to be checked with Iphone. When checked with low letter it will return nil
let devices: [String: String] = [
    "phone":"iPhone 13 Pro",
    "laptop": "Macbook Air M1",
    "watch": "Apple Watch SE",
    "desktop": "iMac 2017",]

// we want Laptop
devices["laptop"]

func printInstructorsName(name: String) -> String {
    return name
}
print(printInstructorsName(name: "me"))

func add( num1: Int, to num2: Int) -> Int {
    return num1 + num2
}

let adding = add(num1: 77, to: 55)

var highScore = 55
var lowScore = 5

if highScore > lowScore {
    print( "I win")
} else {
    print( "I lose!")
}

let allStars = ["Kevin", "Jordna", "Cobe", "O'Brean", "Somestar"]

for player in allStars {
    print(player)
}

for i in 0...25 { //this goes to 26
    print(i)
}

for i in 0..<25 { //this goes only to 25
    print(i)
}

var randomInts: [Int] = []

for _ in 0..<25 { // the " _ " serves as some number placeholder and removes the issue while using the i variable instead
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}
randomInts.sort()
print(randomInts)

// Enums
enum Phone {
    case iPhone
    case HtcTouch
    case iPhonePro
    case pixel
}

func getTomsOpinion(on phone: Phone) {
    if phone == .iPhonePro {
        print("This will always be my phone.")
    } else if phone == .HtcTouch || phone == .pixel {
        print("No more android!")
    } else {
        print("No more simple iphone")
    }
}

getTomsOpinion(on: .iPhonePro)


// Raw values
enum PhoneAsString: String {
    case iPhone     = "Do not buy!"
    case pixel      = "No more android!"
    case iPhonePro  = "Yes, yes, yes!"
}

func getMyOpinion(on phone: PhoneAsString) {
    print(phone.rawValue)
}

getMyOpinion(on: .iPhonePro)


// Switch
let matchMaking = 45

func determinePlayerLeage(from rank: Int) {
    switch rank {
    case 0:
        print("Play the game to determine your league.")
    case 0..<50:
        print("You are in BRONZE league.")
    case 50..<100:
        print("You are in SILVER league.")
    case 100..<120:
        print("You are in GOLD league.")
    case 120..<123:
        print("You are in PLATINUM league. Congratz!")
    default:
        print("You are in a league of your own.")
    }
}

determinePlayerLeage(from: matchMaking)

// Operators
let oneValue = 40
let sndValue = 40

let isDarkMode = true

if oneValue == sndValue && isDarkMode {
    print("Yep seems dark inside!")
}

let agesYoung = [11, 12, 15, 16]
let agesOld = [25, 30, 32, 33]

var agesTogether = agesYoung + agesOld
print(agesTogether)

// Options

var agesTwo = [55, 30, 50]
agesTwo.sort()
// agesTwo?.sort the ? is a set to be for any var, value, array and means that it could be empty.
let oldestAge = agesTwo
    .last

var someAges: [Int] = [22, 33, 40, 15, 20, 17, 50, 40]
someAges.sort()
//let oldestSomeAge = someAges.last
//if oldestSomeAge == nil {
//    print("Looks that we have a nil value here.")
//}

// if let
if let oldestAge2 = someAges.last {
    print ("The oldest age is: \(oldestAge2)")
} else {
    print("There is no oldest age.")
}

// nil coalescing
//let oldestAge2 = ages.last ?? 999

// guard statement
func getOldestAge() {
    guard let oldestAge2 = someAges.last else {
        return
    }
    print("\(oldestAge2) is the oldest age")
}

getOldestAge()
// force unwrap // generates many errors
let oldestAge3 = someAges.last!
