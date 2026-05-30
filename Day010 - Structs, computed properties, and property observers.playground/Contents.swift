import Cocoa

// How to create your own structs

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) by \(artist) (\(year))")
    }
}

let higher = Album(title: "Higher", artist: "Chris Stapleton", year: 2023)
higher.printSummary()
#if false
struct Employee {
    let name: String
    var vacationRemaining: Int
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print(" Oops! There aren't enough days remaining")
        }
    }
}
var archer = Employee(name: "Archer", vacationRemaining: 10)
archer.takeVacation(days: 2)
print(archer.vacationRemaining)

#endif

// How to compute property values dynamically

struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer = Employee(name: "Archer", vacationAllocated: 14)
archer.vacationTaken += 4
archer.vacationRemaining = 5
print(archer.vacationAllocated)

// How to take action when a property changes

struct Game {
    var score = 0 {
        didSet {
            print("The score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score += 5

print()

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Alice")

// How to create custom initializers

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "John P")
print(player.number)

