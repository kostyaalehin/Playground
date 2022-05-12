
class Student1 {
    var firstName : String
    var lastName : String
    var fullName : String {
        return fullName + " " + lastName
    }
    
    init() {
        self.firstName = ""
        self.lastName = ""
    }
}

class Student2 {
    var firstName : String = ""
    var lastName : String = ""
}

class Student3 {
    var firstName : String = ""
    var lastName : String = ""
    
    init(firstName: String, lastName:String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class Student4 {
    var middleName : String?
}

class Student5 {
    let maxAge : Int
    
    init() {
        maxAge = 100
    }
}

/* wrong!
class Student6 : Student5 {
    override init() {
        maxAge = 110
    }
}
*/

struct Student7 {
    var firstName : String
    var lastName : String
    
    init() {
        firstName = ""
        lastName = ""
    }
    init(firstName: String, lastName:String) {
        self.firstName = firstName
        self.lastName = lastName
    }

}

let s1 = Student1()
let s2 = Student2()
let s3 = Student3(firstName: "a", lastName: "b")
let s5 = Student5()
let s7 = Student7(firstName: "A", lastName: "B")

//------------------------------

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

let h1 = Human(weight: 70, age: 25)
//let h2 = Human(weight: 0, age: 25)
let h3 = Human()

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
    
    convenience init(firstName: String) {
        self.init(firstName: firstName, lastName: "")
        self.age = 28
        test()
    }
}

let student = Student(firstName: "a")
print(student.firstName, student.lastName, student.age, student.weight)
let student2 = Student(firstName: "A", lastName: "")
print(student2.firstName, student2.lastName, student2.age, student2.weight)
