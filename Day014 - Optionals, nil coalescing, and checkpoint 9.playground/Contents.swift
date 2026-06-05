import Cocoa

// How to handle missing data with optionals

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
} else {
    print("The optional was empty.")
}

// How to unwrap optionals with guard

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}

func double(number: Int?) -> Int? {
    guard let number = number else {
        return nil
    }
    return number * 2
}
let input = 5
if let doubled = double(number: input) {
    print("\(input) doubled is \(doubled).")
}

// How to unwrap optionals with nil coalescing

let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "IDF"
print(author)

let one = ""
let two = Int(one) ?? 0
print(two)

// How to handle multiple optionals using optional chaining

let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

struct someBook {
    let title: String
    let author: String?
}

var someBook2: someBook? = nil
let author2 = someBook2?.author?.first?.uppercased() ?? "A"
print(author2)

// How to handle function failure with optionals

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)

print("Checkpoint 9 solution below ⤵️")

// Checkpoint 9

func randomNumber(in array: [Int]?) -> Int {
    array?.randomElement() ?? Int.random(in: 0...100)
}

print(randomNumber(in: []))
