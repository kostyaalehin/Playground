import Foundation

struct Student {
    
    var firstName : String{
        
        willSet(newFirstName) {
            print("will set " + newFirstName + " instead of " + firstName)
        }
        didSet(oldFirstName) {
            print("did set " + firstName + " instead of " + oldFirstName)
            
            firstName = firstName.capitalized
        }
    }
    
    var lastName : String {
        didSet {
            lastName = lastName.capitalized
        }
    }
    
    var fullName : String {
        
        get {
            return firstName + " " + lastName
        }
        set {
            print("fullName wants to be set to " + newValue)
            
            let words = newValue.components(separatedBy: " ")
            
            if words.count > 0{
                firstName = words[0]
            }
            
            if words.count > 1 {
                lastName = words[1]
            }
        }
    }
}

var student = Student(firstName: "Kos", lastName: "Alek")

student.firstName
student.lastName
student.fullName

student.firstName = "Bob"

student.firstName
student.lastName
student.fullName

student.fullName = "AleX SkUtarenko"

student.firstName
student.lastName
student.fullName
