import Cocoa

// How to reuse code with functions

func showWelcome() {
    print("Welcome! 👋")
}

showWelcome()

func printTimesTable(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) = \(i * number)")
    }
}

printTimesTable(number: 10, end: 2)

// How to return values from functions

let root = sqrt(144)

print(root)

func rollDice() -> Int {
    return Int.random(in: 1...20)
}

let result = rollDice()
print(result)

print(rollDice())

func sameLetters(a: String, b: String) {
    if a.sorted() == b.sorted() {
        print("They have the same letters")
    } else {
        print("They do not have same letters")
    }
}

sameLetters(a: "apple", b: "bee")

let c = "order".sorted()

print(c)

// Paul's cool solution

func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

print(areLettersIdentical(string1: "bees", string2: "bees"))

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

print(pythagoras(a: 3, b: 4))

func read(books: [String]) -> Bool {
    for book in books {
        print("I'm reading \(book)")
    }
    return true
}
read(books: ["harry potato", "the great gatsby", "1984"])

func writeToLog(message: String) -> Bool {
    if message != "" {
        print("Log: \(message)")
        return true
    } else {
        return false
    }
}

#if false
func giveDog(food: String) -> String {
    if food == "treat" {
        "The dog ate it"
    }
}
#endif

func giveDog(food: String) -> String {
    food == "treat" ? "The dog ate it" : "The dog ignored it"
}

print(giveDog(food: "bone"))

func isEveryoneAdult(ages: [Int]) -> Bool {
    for age in ages {
        if age < 18 {
            return false
        }
    }
    return true
}
isEveryoneAdult(ages: [10, 20, 16, 24])

// How to return multiple values from functions

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Luke", lastName: "Combs")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

func getUser3() -> (firstName: String, lastName: String) {
    (firstName: "Chris", lastName: "Stapleton")
}

let (firstName, _) = getUser3()

print("Name: \(firstName)")

// How to customize parameter labels

func rollDice(sides: Int, count: Int) -> [Int] {
    // Start with an empty array
    var rolls = [Int]()

    // Roll as many dice as needed
    for _ in 1...count {
        // Add each result to our array
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }

    // Send back all the rolls
    return rolls
}

let rolls = rollDice(sides: 6, count: 4)

// no external parameter name

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result2 = isUppercase(string)

// with external parameter name

func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)
