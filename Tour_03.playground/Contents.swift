import Foundation

let ages = [ "Kelly": 13, "Mac": 18, "John": 34, "Kim": 29 ]
var cost = 0
let names = [ "Kelly", "Grace", "Kim" ]
for name in names {
    if let age = ages[name] {
        if age > 19 {
            cost += 20
        } else {
            cost += 15
        }
    } else {
        cost += 20
    }
}
//print("Total cost: \(cost) dollars")

let integers = [ 9, 10, 11 ]
for integerToDescribe in integers {
    var description = "The number \(integerToDescribe) is"
    switch integerToDescribe {
    case 2, 3, 5, 7, 11, 13, 17, 19:
        description += " a prime number, and also"
        fallthrough
    default:
        description += " an integer."
    }
//    print(description)
}

let puzzleIn = "great minds think alike"
var puzzleOut = ""
for char in puzzleIn {
    switch char {
    case "a", "e", "i", "o", "u", " ":
        continue
    default:
        puzzleOut.append(char)
    }
}
//print(puzzleOut)

var age = 22
switch age {
case 20:
    print("Just adult")
case let x where x >= 13:
    print("Teenagers")
case let x where x > 20:
    print("Adult")
default:
    print("kid")
}

let counts = [ 3, 832, 8437, 39, 0, 8, 3335422 ]
for count in counts {
    var prefix: String
    switch count {
    case 0:
        prefix = "no"
    case 1...3:
        prefix = "a few"
    case 4...9:
        prefix = "sevaral"
    case 10...99:
        prefix = "tens of"
    case 100..<1000:
        prefix = "hundreds of"
    case 1000..<1_000_000:
        prefix = "thousands of"
    default:
        prefix = "so many"
    }
    print("\(prefix) stars")
}

let ages2 = [ "Kelly": 13, "Mac": 18, "John": 34, "Kim": 29 ]
for (name, age) in ages2 {
    let msg = "\(name) is \(age)"
}

var sum = 0
for num in 1 ... 100 {
    sum += num
}

do {
    try canThrowAnError()
    print("Nothing has been thrown")
} catch {
    print("Some Error was thrown")
}
