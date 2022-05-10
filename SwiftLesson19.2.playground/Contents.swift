class Human {
    
    var weight : Int
    var age : Int
    
    init(weight: Int, age: Int) {
        self.weight = weight
        self.age = age
    }
    
    convenience init(age: Int) {
        self.init(weight: 0, age: age)
    }
    
    convenience init(weight: Int) {
        self.init(weight: weight, age: 0)
    }
    
    convenience init() {
        self.init(weight: 0)
    }
    
    func test(){}
}

class Student : Human {
    
    var firstName : String
    var lastName : String
    
    init(firstName: String, lastName:String) {
        self.firstName = firstName
        self.lastName = lastName
        super.init(weight: 0, age: 0)
        self.weight = 50
        test()
    }
    override convenience init(weight: Int, age: Int) {
        self.init(firstName: "")
        self.weight = weight
        self.age = age

    }
    
    convenience init(firstName: String) {
        self.init(firstName: firstName, lastName: "")
        self.age = 28
        test()
    }
}

class Doctor : Student {
    
    var fieldOfStady : String = ""
    
    init(fieldOfStady : String) {
        self.fieldOfStady = fieldOfStady
        super.init(firstName: "Doctor", lastName: "House")
    }
    
//    override init(weight: Int, age: Int) {
//        self.fieldOfStady = ""
//        super.init(weight: weight, age: age)
//    }
    
    override init(firstName: String, lastName: String) {
        self.fieldOfStady = "Helth"
        super.init(firstName: firstName, lastName: lastName)
    }
    
//    convenience init(fieldOfStady : String) {
//        self.init(firstName: "Doctor", lastName: "House")
//        self.fieldOfStady = fieldOfStady
//    }
    convenience init(firstName: String) {
        self.init(fieldOfStady: "Math")
        self.age = 35
        self.firstName = firstName
    }
    
}

let s1 = Student()

let d1 = Doctor(firstName: "aaa")
let d2 = Doctor(fieldOfStady: "")

