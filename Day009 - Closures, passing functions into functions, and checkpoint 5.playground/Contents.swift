import Cocoa

// How to create and use closures

func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
greetCopy()

let sayHello = {
    print("Hi there!")
}

sayHello()

let sayHello2 = { (name: String) -> String in
    "Hi \(name)!"
}

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let captainFirstTeam = team.sorted(by: { (name1: String, name2:String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne"{
        return false
    }
    
    return name1 < name2
})

print(captainFirstTeam)

// How to use trailing closures and shorthand syntax


