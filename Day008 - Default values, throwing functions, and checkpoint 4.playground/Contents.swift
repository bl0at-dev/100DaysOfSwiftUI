import Cocoa

// How to provide default values for parameters

func printTimesTables (for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) * \(number) = \(i * number)")
    }
}

printTimesTables(for: 5, end: 10)
print()
printTimesTables(for: 5)

func fireArrow(skillLevel: Int = 1) -> String {
    switch skillLevel {
    case 1...3:
        return "You missed the target."
    case 4...7:
        return "You hit the target."
    default:
        return "Great shot!"
    }
}

print(fireArrow(skillLevel: 4))

// How to handle errors in functions

enum PasswordError: Error {
    case short, obvious
}

func checkPassword (_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "password" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "Ok"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "password"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
  print("Please use a longer password")
} catch PasswordError.obvious {
    print("Please use a less obious password")
} catch {
    print("There was an error: \(error.localizedDescription)")
}

// Summary: Functions

/*
- Functions let us reuse code easily by carving off chunks of code and giving it a name.
 
- All functions start with the word func, followed by the function’s name. The function’s body is contained inside opening and closing braces.
 
- We can add parameters to make our functions more flexible – list them out one by one separated by commas: the name of the parameter, then a colon, then the type of the parameter.
 
- You can control how those parameter names are used externally, either by using a custom external parameter name or by using an underscore to disable the external name for that parameter.
 
- If you think there are certain parameter values you’ll use repeatedly, you can make them have a default value so your function takes less code to write and does the smart thing by default.
 
- Functions can return a value if you want, but if you want to return multiple pieces of data from a function you should use a tuple. These hold several named elements, but it’s limited in a way a dictionary is not – you list each element specifically, along with its type.
 
- Functions can throw errors: you create an enum defining the errors you want to happen, throw those errors inside the function as needed, then use do, try, and catch to handle them at the call site.
 */

// Checkpoint 4

enum SquareRootError: Error {
    case outOfBounds, noRoot, tooLow, tooHigh
}

func squareRootv2(of number: Int) throws -> Int {
    if number < 1 { throw SquareRootError.tooLow }
    if number > 10_000 { throw SquareRootError.tooHigh }
    
    for i in 1...100 {
        if i*i == number {
            return i
        }
    }
    throw SquareRootError.noRoot
}

do {
    let result = try squareRootv2(of: 4)
    print(result)
    
} catch SquareRootError.tooLow {
    print("The number is too low")
} catch SquareRootError.tooHigh {
    print("The number is too high")
} catch SquareRootError.noRoot {
    print("No root")
}catch {
    print("There was an error: \(error.localizedDescription)")
}
