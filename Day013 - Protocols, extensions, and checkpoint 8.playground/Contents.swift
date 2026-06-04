import Cocoa

// How to create and use protocols – Swift for Complete Beginners

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    let name = "Car"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)

struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }

    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}

let bike = Bicycle()
commute(distance: 50, using: bike)

print()

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

getTravelEstimates(using: [car, bike], distance: 150)

// How to use opaque return types

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print("---")

print(getRandomNumber() == getRandomNumber())

// How to create and use extensions

var quote = "     Hello, world!"
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    func trimmed() -> String{
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

let test = quote.trimmed()
print(quote)
print(test)

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)
Book(title: "Everything but the code", pageCount: 382)

// How to create and use protocol extensions

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty == false {
    print("Guest count: \(guests.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "ur momma")
taylor.sayHello()

// Checkpoint 8

protocol Building {
    var type: String { get }
    var roomsQuantity: Int { get }
    var propertyCost: Int { get set}
    var realEstateAgentName: String { get set}
    
    func printSummary()
}

extension Building {
    func printSummary() {
        print("Real estate agent name is agent \(realEstateAgentName), rooms quantity: \(roomsQuantity), cost of the \(type): \(propertyCost)")
    }
}

struct House: Building {
    var type: String = "house"
    var roomsQuantity: Int
    var propertyCost: Int
    var realEstateAgentName: String
}

struct Office: Building {
    var type: String = "office"
    var roomsQuantity: Int
    var propertyCost: Int
    var realEstateAgentName: String
}

let house = House(roomsQuantity: 5, propertyCost: 670_000, realEstateAgentName: "Smith")
house.printSummary()

let office = Office(roomsQuantity: 10, propertyCost: 1_000_000, realEstateAgentName: "Torta")
office.printSummary()


