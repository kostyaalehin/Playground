
let MaxNameLehght = 10


class Human {
    
    var name : String {
        didSet {
            if name.count > MaxNameLehght {
                name = oldValue
            }
        }
    }
    
    lazy var storyOfMyLife = "This is a story of my entire life..."
    
    class var maxAge : Int {
        return 100
    }
    
    var age: Int {
        didSet {
            if age < Human.maxAge {
                age = oldValue
            }
        }
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

enum Direction {
    
    static let enumDiscription = "Directions in the game"
    
    case Left
    case Right
    case Top
    case Botton
    
    var isVertical : Bool {
        return self == .Top || self == .Botton
    }
    
    var isHorizontal : Bool {
        return !isVertical
    }
}

let d = Direction.Right
d.isVertical
d.isHorizontal

struct Cat {
    
    var name : String {
        didSet {
            if name.count > MaxNameLehght {
                name = oldValue
            }
        }
    }
    
    static let maxAge = 20
    
    static var totalCats = 0

    var age: Int {
        didSet {
            if age < Cat.maxAge {
                age = oldValue
            }
        }
    }
    
    init(name: String, age:Int) {
        self.name = name
        self.age = age
        
        Cat.totalCats += 1
    }
}

let human = Human(name: "Peter", age: 40)

var cat = Cat(name: "Whiten", age: 10)


human.age = 1000
print(human.storyOfMyLife)
cat.age = 50
Cat.totalCats
Direction.enumDiscription
