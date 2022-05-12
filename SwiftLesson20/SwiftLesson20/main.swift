var playground = true

class Student {
    
    unowned var teacher : Teacher
    
    deinit {
        print("goodbye student")
    }
    
    init(teacher : Teacher) {
        self.teacher = teacher
    }
}

class Teacher {
    
    var student : Student!
    
    var test : (() -> ())?
    
    lazy var test2 : (Bool) -> () = {[unowned self] (a: Bool) in
//        print(self)
        print(self.student)
    }
    
    init() {
        self.student = Student(teacher: self)
    }
    
    deinit {
        print("goodbye teacher")
    }
}

var closure : (() -> ())?

if playground {
    
//    var t: Teacher?
    
    var teacher = Teacher()
    
    teacher.test2(true)
    
    teacher.test = {
        [unowned teacher] in
        print(teacher)
    }
    
//    if playground {
//        var student = Student(teacher: teacher)
//        teacher.student = student
//    }
    
//    closure = {
//        print(teacher)
//    }
    
    print("exit playground")
}

class Human {
    var name = "a"
}

var h = Human()

var x = 10
var y = 20

var closure3 : () -> () = {
    [x, y] in
    print("\(x) \(y)")
}

var closure2 : (Int) -> Int = {[x, y, h] (a:Int) -> Int in
    
    print("\(x) \(y) \(h.name)")
    return a
}

closure2(1)

x = 30
y = 40
h = Human()
h.name = "b"

closure2(1)

print("end")
