import Cocoa

// How to use a for loop to repeat work

let platforms = ["iOS", "macOS", "tvOS", "watchOS", "ipadOS"]

for platform in platforms {
    print("\(platform) is awesome!")
}

#if false
for i in 1...5 {
    print("5 * \(i) = \(5 * i)")
}
#endif

print()

for i in 1...5 {
    print("The \(i) times table.")
    
    for j in 1...5 {
        print("   \(j) * \(i) = \(j * i)")
    }
print()
}

for i in 1...10 {
    print("Couning from 1 through 10: \(i)")
}

print()

for i in 1..<10 {
    print("Couning from 1 up to 10: \(i)")
}

var lyrics = "Haters gonna "

for _ in 1...5 {
    lyrics += " hate"
}
print(lyrics)

// How to use a while loop to repeat work

var countdown = 10

while countdown > 0 {
    print("\(countdown) ...")
    countdown -= 1
}

print("Blast off!")

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a ... \(roll)")
}

print("Critical hit!")

let colors = ["Red", "Green", "Blue", "Orange", "Yellow"]
var colorCounter = 0
while colorCounter < 5 {
    print("\(colors[colorCounter]) is a popular color.")
    colorCounter += 1
}

var itemsSold: Int = 0
while itemsSold < 5000 {
    itemsSold += 100
    if itemsSold.isMultiple(of: 10000) {
        print("\(itemsSold) items sold - a big milestone!")
    }
}

var number: Int = 10
while number > 0 {
    number -= 2
    if number.isMultiple(of: 2) {
        print("\(number) is an even number.")
    }
}

var bottles = 10
while bottles > 0 {
    bottles -= 2
    print("\(bottles) green bottles.")
}

var speed = 50
while speed <= 55 {
    print("Accelerating to \(speed)")
    speed += 1
}

// How to skip loop items with break and continue

let filenames = ["me.jpg", "work.txt", "dog.jpg"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("Found a picture: \(filename)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

// Checkpoint 3

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("\(i) FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("\(i) Fizz")
    } else if i.isMultiple(of: 5) {
        print("\(i) Buzz")
    } else {
        print(i)
    }
}
