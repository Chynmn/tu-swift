import Foundation

func points(number: Int, bonus: (Int)->Bool) -> Int {
    var pt = number * 10
    if bonus(number) {
        pt += 1
    }
    return pt
}

let pt1 = points(number: 5, bonus: {
    (number: Int) -> Bool in
    return number % 2 != 0
})

let negative = { (num: Int) -> Bool in
    return num < 0
}
let pt2 = points(number: -1, bonus: negative)

let positive = { $0 > 0 }
let pt3 = points(number: 9, bonus: positive)

let mod3 = points(number: 9, bonus: { $0 % 3 == 0 })
mod3
let mod7 = points(number: 9) { $0 % 7 == 0 }
mod7

var numbers = [ 1, 12, 32, 2, 4, 43, 3 ]
numbers.sort(by: { (n1: Int, n2: Int) -> Bool in
    return n1 < n2
})
numbers

numbers.sort(by: {n1, n2 in n1 > n2})
numbers

numbers.sort { $0 < $1 }
numbers

numbers.sort(by: >)

numbers.sort()

