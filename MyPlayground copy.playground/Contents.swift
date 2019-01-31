////: Playground - noun: a place where people can play
//
//import UIKit
//
//var str = "Hello, playground"
//print (str)
//
//let name = "Alexander the Great"
//for character in name.characters {
//    print(character) }
//for number in 1...10 {
//    print(number)
//}
//let results = [7, 52, 9, 33, 6, 24, 67]
//let maxResultsCount = 5
//for index in 0...maxResultsCount  {
//    print("Result \(index) is \(results[index])")
//}
//
//
//for x in 1...7{
//    for count in 0..<x{
//        print("x", terminator:"")
//    }
//    print()
//}
//
//var count = 0
//for x in 1...7{
//    while count < x{
//        print("x", terminator: "")
//        count = count + 1
//    }
//    print()
//    count = 0
//}
//
//var i = 0
//var y = "x"
//while (i < 7)
//{
//    print (y)
//    y = y + "x"
//    i = i+1
//}
//
//
//
//func sayHello(personName: String) -> String {
//    
//    let greeting = "Hello, \(personName)!"
//    
//    return greeting
//}
//
//print(sayHello(personName:"anita"))
//
//var greetingStr = sayHello(personName:"anita")
//print(greetingStr)
//
//let animal = "dog or cat"
//switch animal {
//    case "bird":
//    let bird = "bird"
//    case "alligator":
//    let alligator = "alligator"
//case let x where x.hasSuffix("cat"):
//    let dogorcat = "It is \(x)"
//default:
//    let otheranimals = "Any other Animal"
//    
//}
//var Monday: Bool = true
//if (Monday) {
//    print("It is the weekday. Boo I need to go to school")
//    
//} else {
//    print("It is the weekend party it up")
//}
//
//
//var p = 201
//while p >= 100 {
//    p = p - 2
//    print(p)
//}
//
//var m = 201
//repeat {
//    m = m - 2
//    print(m)
//} while m >= 100
//
//
//var Condiments: [String] = ["ketchup", "mustard", "horseradish", "ranch"]
//Condiments.append("thousand island")
//for (index, value) in Condiments.enumerated() {
//    print("Item \(index): \(value)")
//}
//print("There are" + " " + String(Condiments.count) + " counts in this array")
//print(Condiments[2])
//

//var Condiments = ["ketchup": 15, "mustard": 35, "horseradish": 45, "ranch": 55]
//
//Condiments["thousand island"] = 65
//
//
////var Condiments: Set = ["ketchup", "horseradish", "ranch", "mustard"]
////var personName = "Yunyong"
//func sayHi(personName: String) -> String {
//    let greeting = "Hello \(personName)!"
//    return greeting
//}
//
//var grt = print(sayHi(personName:"Yunyong"))

var accelerometer: Float?
var gyroscope: Float?
var magnetometer: Float?

accelerometer = 9.5
gyroscope = 0.3
magnetometer = 1.0153

let normalDistribution = accelerometer! + gyroscope! + magnetometer! / 3   //forced unwrap must forcibly unwrap by adding !


if let accel = accelerometer,
let gyro = gyroscope,
    let mag = magnetometer {
    let normalDistribution = accel + gyro + mag / 3
    print(normalDistribution)
} else {
    let errorString = "An instrument reported a reading that was nil"
    print(errorString)
} // optional binding unwrap



for count in 1...100{
    if(count % 15 == 0) {
        print("FizzBuzz")
    }
    else if(count % 3 == 0) {
        print("Fizz")
    } else if(count % 5 == 0){
        print("Buzz")
    } else{
        print(String(count))
        
    }
)


