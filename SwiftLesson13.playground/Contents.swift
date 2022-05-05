/*
let student1 = (name: "Alex", age: 20)
let student2 = (name: "Bob", age: 22)
let student3 = (nam: "Sam", age: 23)
*/

class StudentClass {
    var name : String
    var age : Int
    
    init() {
        name = "No name"
        age = 20
    }
    
    init (name: String, age:Int) {
        self.name = name
        self.age = age
    }
}

struct StudentStruct {
    var name : String
    var age : Int
}

func addOneYear(student: StudentClass) {
    student.age += 1
}

func addOneYear(student: inout StudentStruct) {
    student.age += 1
}

let stClass1 = StudentClass(name: "Bob", age: 22)

stClass1.name = "Alex"
stClass1.age = 21

var stStruct1 = StudentStruct(name: "Sam", age: 24)

//stStruct1.name = "Sam2"
//stStruct1.age = 21

var stStruct2 = stStruct1

stStruct2.age = 25
stStruct2.name = "Samuel"

print(stStruct1)
print(stStruct2)

var stClass2 = stClass1

stClass2.age = 18
stClass2.name = "Alex2"

print(stClass1.age, stClass1.name)
print(stClass2.age, stClass2.name)

print(stStruct1)
addOneYear(student: &stStruct1)
print(stStruct1)

print(stClass1.age, stClass1.name)
addOneYear(student: stClass1)
print(stClass1.age, stClass1.name)

var array1 = [stStruct1]
print(array1[0])
array1[0].age = 50
print(array1[0])
print(stStruct1)

var array2 = [stClass1]
array2[0].age = 50
print(stClass1.age, stClass1.name)
