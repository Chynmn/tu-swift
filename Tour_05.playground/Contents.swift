import Foundation

class Animal {
    var legCount = 0
    var name: String
    init(name: String) {
        self.name = name
    }
    func simpleDesc() -> String {
        "This \(name) has \(legCount) legs"
    }
}

let lark = Animal(name: "Lark")
lark.legCount = 2
lark.simpleDesc()

class Mammal: Animal {
    override init(name: String) {
        super.init(name: name)
        legCount = 4
    }
    override func simpleDesc() -> String {
        "A mammal named \(name)"
    }
    func giveBirth() -> Mammal {
        print("Brought forth a baby")
        return baby()
    }
    func baby() -> Mammal {
        Mammal(name: "A baby \(name)")
    }
}

let el = Mammal(name: "Elephant")
el.legCount
el.simpleDesc()
let baby_el = el.giveBirth()
baby_el.simpleDesc()
let grand_el = baby_el.giveBirth()
grand_el.simpleDesc()

class Dog: Mammal {
    override func baby() -> Mammal {
        Dog(name: "\(name)'s Puppy")
    }
    func bark() -> String {
        "Bark!"
    }
}

let jd = Dog(name: "Jindol")
let puppy = jd.giveBirth()
puppy.name
type(of: puppy)
(puppy as! Dog).bark()
//puppy.bark()

class Platypus: Mammal {
    override func giveBirth() -> Mammal {
        print("Laying an egg")
        return baby()
    }
    override func baby() -> Mammal {
        Platypus(name: "Baby \(name) from an egg")
    }
}

let pl_parent = Platypus(name: "Plat")
pl_parent.name
let pl_baby = pl_parent.giveBirth()
pl_baby.name

let mammals = [
    Mammal(name: "Normal one"),
    Dog(name: "Jindol"),
    Platypus(name: "Plat"),
]
for m in mammals {
    let child = m.giveBirth()
    child.simpleDesc()
}

//print("\n\n\n\n")

// Bad example
for m in mammals {
    if m is Dog {
        print("Dog: \(m.simpleDesc())")
    } else if m is Platypus {
        print("Platipus: \(m.simpleDesc())")
    } else {
        print("Just a mammal: \(m.simpleDesc())")
    }
}

//print("\n\n\n\n")

class Monster: Mammal {
    var kneeCount: Int {
        legCount
    }
    var toeCount: Int {
        get { legCount * 4 }
        set(count) { legCount = count / 4 }
    }
    var eyeCount = 0 {
        didSet {
            legCount = 2 * eyeCount
        }
    }
}

let m = Monster(name: "Goo")
(knee: m.kneeCount, toe: m.toeCount)
m.toeCount = 20
m.kneeCount

m.eyeCount = 123
m.legCount

let anim_dict = [
    "jd": Dog(name: "Jindol"),
    "plat": Platypus(name: "Platipus"),
]

let cat = anim_dict["cat"]
let catdesc = cat?.simpleDesc()
type(of: catdesc)

let catdesc2 = cat?.simpleDesc() ?? "No Cat"
type(of: catdesc2)
