import Cocoa

// 🐼 Things I'd love to keep in my dyslectic/adhd brain ⤵️
 
var variable = "creates a variable"
let constant = "creates a constant"

// Common types of data: String, Int, Double, Bool

// Cool methods

let coolMethodExmaple = "cool method example"
coolMethodExmaple.count // counts for this example letters in the constant
coolMethodExmaple.hasPrefix("cool") // checks if it has the prefix "cool"
coolMethodExmaple.hasSuffix("example") // checks if it has the suffix "example"

// Stuff with integers

let randomNumber = Int.random(in: 1...100) // generates a random number
randomNumber.isMultiple(of: 3) // checks if the number is a multimple of 3

// Stuff with booleans
var isSaved = false
isSaved.toggle() // flips the boolean

// String interpolation - lets you create string with other data

let name = "Mark"
let lastName = "Chesnutt"
let message = "\(name) \(lastName) is an amazing country singer" // example of a string interpolation in use

// Arrays stuff

var colors = ["Red", "Green", "Blue"] // an array of string
colors.append("Pink") // adds a string to the array colors
colors.remove(at: 0) // removes the first item in the array
var emptyArray = [String]() // an empty array
emptyArray.contains("item1") // check if the empty array contains

// Dictionaries stuff

var exampleDictionary = ["key1": "value1", "key2": "value2"] // example syntax
print(exampleDictionary["name", default: "Unknown"])
exampleDictionary["key3"] = "value3" // an example how to add items to a dictionary

// Sets stuff

var anExampleSet = Set([1,1,4,5,7]) // Sets ignore duplicates and don't store items in any particular order
print(anExampleSet)
anExampleSet.insert(10) // to add an item to a set we use insert inseat of append which is used with arrays

// Enums stuff -> enum is a thing that we can use to make our code safer and more efficient

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.thursday
day = Weekday.monday

// Type annotations

var stringTypeAnnottationExample: String = "Hello"
var intTypeAnnottationExample: Int = 1
var doubleTypeAnnottationExample: Double = 1.0
var boolTypeAnnottationExample: Bool = false
var arrayTypeAnnottationExample: Array<String> = ["Hello", "World"]
var array2TypeAnnottationExample: [String] = ["Red", "Fearless"]
var dictionaryTypeAnnottationExample: Dictionary<String, String> = ["id": "bl0at"]
var dictionary2TypeAnnottationExample: [String: String] = ["id": "bl0at"]
var setTypeAnnottationExample: Set<String> = Set(["White horse", "Higher"])

// The ternary conditional operator

let ternaryExample: Int = 6
let tcoInUse = ternaryExample > 5 ? "True" : "False"

// I might come back to continue later, but I'd rather use the consolidation page as a reference whenever I need to refresh my knowledge.






