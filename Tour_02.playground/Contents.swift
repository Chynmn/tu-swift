import Foundation

var names: [String] = [ "Kim", "Lee", "Park" ]
names.append("Choi")

let kim = names[0]
let count = names.count

names.isEmpty
names.first
names.last

names.sorted()

var nums = [ 1, 2, 3, 4, 5 ]
nums.append(67)
nums[3] = 100

nums
nums.sort()
nums

let a = [ 1, 2, 3 ]
var b = a
var c = b
b[1] = 100

a
b
c

let integers = [ 1, 2 ]
type(of: integers)

let doubles = [ 1.0, 2 ]
type(of: doubles)

let x = 1, y = 2
let xy = [ x, y ]
type(of: xy)

let xy2: [Double] = [ 1, 2 ]
type(of: xy2)

let xy3 = [ Double(x), Double(y) ]
type(of: xy3)

let what: [CustomStringConvertible] = [ "Swift", 5.0 ]
what

var blank_array: [String] = []
blank_array.append("Kim")

blank_array = []

//var some_array = []
//some_array.append("Hello")

var ages = [ "Kim": 10, "Lee": 20 ]
ages = [:]

var a173 = [ 1, 7, 3 ]
a173.contains(7)
a173.contains(2)
var cnt = a173.count

//var seventh = a173[7]

var ages2 = [ "Kim": 10, "Lee": 20 ]
let a1 = ages2["Kim"]
print(a1)

let a2 = ages2["Kim"]!
print(a2)

let a3 = ages["Park"]
print(a3)

