import Cocoa

// How to check if a condition is true or false

#if false
if someCondition {
    print("Do something")
}
#endif

let speed = 240
let percentage = 67
let age = 21

if speed > 200 {
    print("Uważaj!, bratku")
}

if percentage < 69 {
    print("Some random meme response")
}

if age >= 21 {
    print("From now on, you're allowed to lawfully poison yourself with alcohol")
}

var numbers = [1,2,3]
numbers.append(67)

if numbers.count > 3 {
    numbers.remove(at: 0)
}
print(numbers)

let country = "Poland"

if country == "Spain" {
    print("¡Hola!")
}

let name = "Diaz"

if name != "Anonymous" {
    print("Hello Mr. \(name)")
}

var userName = ""

if userName.isEmpty {
    userName = "Anonymous"
    print("Welcome Mr. \(userName)")
}

// How to check multiple conditions

let legalAge = 16

if legalAge >= 18 {
    print("You're eligible to vote in the next election.")
} else {
    print("Sorry, you're too young to vote, bratan")
}

let a = false
let b = false

if a == true {
    print("Code to run if a is true.")
} else if b == true {
    print("Code to run if b is true.")
} else {
    print("Code to ruin if both a and b are false")
}

let temp = 25

if temp > 20 && temp < 30 {
    print("It's a nice day fn")
}

let userAge = 16
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent == true {
    print("You're eligible to buy the game!")
} else {
    print("You cannot buy the game")
}

enum KitchenStuff {
    case air_fryer, stove, refrigerator
}

let favoriteKitchenThing = KitchenStuff.refrigerator

if favoriteKitchenThing == .air_fryer || favoriteKitchenThing == .stove {
    print("You can make fries with that thing 🍟")
} else if favoriteKitchenThing == .refrigerator {
    print("I love refrigerators!")
} else {
    print("Something went wrong 🤷🏻‍♂️")
}

// How to use switch statements to check multiple conditions

let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "New York":
    print("You're Spiderman!")
default:
    print("Who are you?")
}

let day = 5
print("My true love gave to me ...")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

// How to use the ternary conditional operator for quick tests

let personAge = 21
let canDrink = personAge >= 21 ? "Yessir" : "No, broski"
// WTF              W -> What?      T -> True    F -> False

print(canDrink)

let hour = 12

print(hour == 12 ? "It's high noon" : "It's not high noon")

let names = ["John", "Paul", "Donald"]
let crewCount = names.isEmpty ? "No one" : "There is \(names.count) people on board"
print(crewCount)

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "dark" : "light"
print(background)
