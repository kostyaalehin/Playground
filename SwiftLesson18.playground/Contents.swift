class Human {
    
    var firstName : String = ""
    var lastName : String = ""
    
    var fullName : String {
        return firstName + " " + lastName
    }
    
    func sayHello() -> String {
        return "Hello"
    }
    
}

class Student : Human {
    
    override func sayHello() -> String {
        return super.sayHello() + " my friend"
    }
    
}

class Kid: Human {
    
    var favoriteToy : String = "iMac"
    
    override func sayHello() -> String {
        return "agu"
    }
    
    override var fullName: String {
        return firstName
    }
    
    override var firstName: String {
        set {
            super.firstName = newValue + " :)"
        }
        get {
            return super.firstName
        }
    }
    
    override var lastName: String {
        didSet {
            print("new value for lastName: " + super.lastName)
        }
    }
}

let human = Human()
human.firstName = "Kostya"
human.lastName = "Alekhin"
human.sayHello()

let student = Student()
student.firstName = "Max"
student.lastName = "Sky"
student.sayHello()
student.fullName

let kid = Kid()
kid.firstName = "Quvi"
kid.lastName = "Mad"
kid.sayHello()
kid.fullName
kid.favoriteToy

let array /* : [Human] */ = [kid, student, human]

for value in array {
    print(value.sayHello())
}
