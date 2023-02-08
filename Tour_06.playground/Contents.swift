import Foundation

// A. enum

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func string() -> String {
        switch self {
        case .ace, .jack, .queen, .king:
            return "\(self)"
        default:
            return String(self.rawValue)
        }
    }
}

let c_a = Rank.ace
let c_2 = Rank.two
let str_a = "Card a = \(c_a), \(c_a.string())"
let str_2 = "Card 2 = \(c_2), \(c_2.string())"

var the_card = Rank.six
the_card.string()
the_card = .five
the_card.string()
the_card = .jack
the_card.string()

enum ServerResponse {
    case result(name: String, city: String)
    case error(msg: String)
}

let success = ServerResponse.result(name: "Kim", city: "Seoul")
let failure = ServerResponse.error(msg: "Invalid Name")

func desc(sr: ServerResponse) -> String {
    switch sr {
    case let .result(name, city):
        return "Name: \(name), City: \(city)"
    case let .error(msg):
        return "Error: \(msg)"
    }
}

desc(sr: success)
desc(sr: failure)
desc(sr: .result(name: "Lee", city: "시흥"))

class ClassPerson {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let c_person = ClassPerson(name: "Kim", age: 10)
var copy_c = c_person
copy_c.name = "Lee"

//print((original: c_person.name, copy: copy_c.name))

struct StructPerson {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let s_person = StructPerson(name: "Kim", age: 10)
var copy_s = s_person
copy_s.name = "Lee"

//print((original: s_person.name, copy: copy_s.name))

struct SPerson {
    let name: String
    let age: Int
}
let p1 = SPerson(name: "Kim", age: 20)

class CPerson {
    let name: String = ""
    let age: Int
    init() { age = 0 }
}
let c1 = CPerson()

import CoreGraphics

protocol Annotation {
    var location: CGPoint { get }
    var title: String { get }
    func show()
}

struct City: Annotation {
    var location = CGPoint(x: 0, y: 0)
    var title: String
    func show() {
        print("I am a city titled \(title)")
    }
}

enum Poi: Annotation {
    case seoul, busan, siheung
    var location: CGPoint { CGPoint.zero }
    var title: String { "\(self)" }
    func show() {
        print("I am an enum (\(title))")
    }
}

var gimpo = City(title: "Gimpo")
let pois: [Annotation] = [ gimpo, Poi.seoul ]

for a in pois { a.show() }

gimpo.title = "nowhere"
pois[0].title

extension String {
    func addPrefix(prefix: String) -> String {
        prefix + self
    }
}

let s1 = "Nice"
s1.addPrefix(prefix: "Very ")
"cookies".addPrefix(prefix: "a lot of ")

extension String: Annotation {
    var title: String { self }
    var location: CGPoint { CGPoint.zero }
    func show() {
        print("Show \(self)")
    }
}
"String".show()

protocol Increasing {
    func increasedValue(amount: Int) -> Int
    mutating func increase(amount: Int)
}

extension Int: Increasing {
    func increasedValue(amount: Int) -> Int {
        return self + amount
    }
    mutating func increase(amount: Int) {
        self += amount
    }
}

var value = 3
value.increasedValue(amount: 6)
value.increase(amount: 4)

func makeArray<T>(item: T, times: Int) -> [T] {
    var items = [T]()
    for _ in 0 ..< times {
        items.append(item)
    }
    return items
}
makeArray(item: "K", times: 4)
makeArray(item: 10, times: 3)

func makeAnyArray(item: Any, times: Int) -> [Any] {
    var items = [Any]()
    for _ in 0 ..< times {
        items.append(item)
    }
    return items
}
makeAnyArray(item: "K", times: 4)
let arr_any = makeAnyArray(item: 10, times: 3)
let first_element_any = arr_any[0]

let arr_gen = makeArray(item: 10, times: 3)
let first_element_gen = arr_gen[0]
first_element_any

func swapGenerics<T>( a: inout T, b: inout T) {
    let t = a
    a = b
    b = t
}

var a1 = 10, a2 = 20
swapGenerics(a: &a1, b: &a2)
(a1:a1, a2:a2)

func swapAny(a: inout Any, b: inout Any) {
    let t = a
    a = b
    b = t
}

//swapAny(a: &a1, b: &a2)
