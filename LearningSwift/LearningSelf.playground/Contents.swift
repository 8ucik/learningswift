import UIKit

class Developer {
//    adding ? makes an field optional
//    like var name: String?
    var name: String?
    var jobTitle: String?
    var yearsExp: Int?
    
//    init(){}
    
    init(name: String, jobTitle: String, yearsExp: Int) {
        self.name = name
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }
    
    func speakName() {
        print(name!) // ! means force unwrap and then the output instead of being Optional("Tom") will be just Tom
    }
}
//let tom = Developer(name: "Tom", jobTitle: "iOS Programmer", yearsExp: 2)
// then adding tom.name makes it to be renamed from code behind the class
// the tom. <-- the dot is named dot-syntax
//tom.name
//tom.jobTitle
//tom.yearsExp

//let tom = Developer(name: "Tom", jobTitle: "iOS Programmer", yearsExp: 2)
//
//
//tom.speakName()
// class is a reference type
class IOSDeveloper: Developer {
    var favouriteFramework: String?
    
    func speakFavouriteFramework() {
        if let favouriteFramework = favouriteFramework {
            print(favouriteFramework)
        } else {
            print("I don't have a fav framework.")
        }
    }
    
    override func speakName() {
        print("\(name!) - \(jobTitle!)")
    }
}

var tom = IOSDeveloper(name: "Tom", jobTitle: "Developer", yearsExp: 2)
tom.favouriteFramework = "ARKit"

tom.speakFavouriteFramework()
tom.speakName()

// class is a reference type
// google sheet is a reference type, because you are sharing it with people
// struct is a value type

// referencing a type

var joe = tom
joe.name = "Joe"
tom.name // referenced to Tom, but it is set to Joe
