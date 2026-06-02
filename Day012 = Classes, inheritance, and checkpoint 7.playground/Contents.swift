import Cocoa

// How to create your own classes

class Game {
    var score = 0 {
        didSet {
            print("Score changed to \(score)")
        }
    }
}
var newGame = Game()
newGame.score = 10
newGame.score = 101

// How to make one class inherit from another

class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm in love with the coco")
    }
}

final class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 10)
let joseph = Manager(hours: 8)
robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()

// How to add initializers for classes

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

// How to copy classes

class User {
    var username = "Anonymous"
    
    func copy() -> User {
            let user = User()
            user.username = username
            return user
        }
}

var user1 = User()
var user2 = user1.copy()
user2.username = "Robin"

print(user1.username)
print(user2.username)

// How to create a deinitializer for a class

class User2 {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user = User2(id: i)
    print("User \(user.id): I'm in control!")
}

print()

var users = [User]()

for i in 1...3 {
    let user = User2(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user2)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")

// How to work with variables inside classes

class someUser {
    var name = "Paul"
}

let user67 = someUser()
user67.name = "Taylor"
print(user67.name)

// Checkpoint 7

/*
 - Make a class hierarchy for animals
 - Start with Animal. Add a legs property for the number of legs and animal has.
 */

class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("bark bark!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("woof woof!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("awoo!")
    }
}

class Cat: Animal {
    let isTame: Bool
    func speak() {
        print("meow!")
    }
    
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
}

class Persian: Cat {
    override func speak() {
        print("miaow!")
    }
}

class Lion: Cat {
    override func speak() {
        print("RRROOOAAARRR!")
    }
}
