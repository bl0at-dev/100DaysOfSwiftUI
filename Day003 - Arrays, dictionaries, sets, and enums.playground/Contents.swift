import Cocoa

//var greeting = "Hello, playground"
//
//var numbers = [1,2,3,4]
//
//numbers.append(5)
//
//print(numbers)
//print(numbers[2])
//
//var scores = Array<Int>()
//
//scores.append(100)
//scores.append(100)
//scores.append(105)
//print(scores)
//
//var albums = [String]()
//
//albums.append("Higher")
//albums.append("Traveller")
//albums.append("Starting Over")
//
//print(albums)
//
//print(albums.count)
//
//scores.remove(at: 2)
//print(scores)
//
//scores.removeAll()
//print(scores)
//
//let bondMovies = ["Casino Royale", "Spectre", "No Time to Die"]
//
//print(bondMovies.contains("Frozen"))
//
//let cities = ["New York", "London", "Berlin", "Madrid"]
//
//print(cities.sorted())
//
//let presidents = ["Washington", "Adams", "Jefferson", "Van Buren"]
//let reversedPresidents = presidents.reversed()
//print(reversedPresidents)

let employee1 = ["name": "Luke Combs", "job": "Country Singer", "location": "Nashville Tennessy"]

print(employee1["name", default: "Unknown"])
print(employee1["job", default: "Unknown"])
print(employee1["location", default: "Unknown"])

let hasGratuated = [
    "Eric": true,
    "Stewie": false
]


var heights = [String: Int]()
heights["Yao Ming"] =  226
heights["Shaquille O'Neal"] =  216

print(heights.count)

// How to use sets for fast data lookup

var actors = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(actors)

actors.insert("Dwayne \"The Rock\" Johnson")

print("Dwayne \"The Rock\" Johnson")

//How to create and use enums

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = .friday
