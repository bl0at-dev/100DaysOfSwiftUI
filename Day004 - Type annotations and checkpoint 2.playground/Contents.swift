import Cocoa

// How to use type annotations

let surname: String = "Ronaldo"
var score: Int = 0
let pi: Double = 3.141
var isAuthenticated: Bool = false
var albums: [String] = ["Higher", "Starting Over", "Traveller"]
var user: [String: String] = ["id": "@bloat"]
var books: Set<String> = Set(["Atomic Habits", "Deep Work"])

var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = UIStyle.system
style = .dark

// Checkpoint 2

let numbers: [Int] = [1, 2, 2, 4, 5]
print("Total of items in the array -> \(numbers.count)")
let numbersUnique = Set(numbers)
print("Total of unique items in the array -> \(numbersUnique.count)")
