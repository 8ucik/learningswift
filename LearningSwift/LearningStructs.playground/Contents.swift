import UIKit

// structs have use memberwise initializer
struct Developer {
    var name: String
    var jobTitle: String
    var yearsExp: Int

// using a memberwise initializer makes the below code not required to use
//    init(name: String, jobTitle: String, yearsExp: Int) {
//        self.name = name
//        self.jobTitle = jobTitle
//        self.yearsExp = yearsExp
//    }
}

var tom = Developer(name: "Tom", jobTitle: "iOS Developer", yearsExp: 0)

// when used with structs the name won't change
var joe = tom
joe.name = "Joe"
tom.name

// reference types vs value types is a known question for iOS developer job
