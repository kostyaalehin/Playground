
var age = 15

/*
if age == 21 {
    
} else if age == 22 {
    
} else {
    
}
*/

/*
mainLoop: for _ in 0..<100 {
    for i in 0..<20 {
        if i < 15 {
            //continue
        }
        if i == 10 {
            break mainLoop
        }
    }
}
*/
var name = "Kostya"

switch age {
    case 0...16: print("scholl"); fallthrough
    case 17...21: print("student")
    case 22...50: break
    case 51, 54, 56: print("..")
default:
    break
}

switch name {
    case "Kostya" where age < 50: print("Hi!")
    case "Kostya" where age >= 50: print("Hello!")
default:
    break
}

var optional : Int? = 5
if let optional = optional {
    print("\(optional) != nil")
}

let tuple = (name, age)

switch (name, age) {
    case ("Kostya", 60): print("hi Kostya 60")
    case ("Kostya", 59): print("hi Kostya 59")
    case (_, let number) where number >= 65 && number <= 70: print("hi OG")
    case ("Kostya", _): print("hi Kostya")
    default: break
}

let point = (5,5)

switch point {
    case let (x,y) where x == y: print("x == y")
    case let (x,y) where x == -y: print("x == -y")
    case let (_,y) where y < 0: print ("y < 0")
    default: break
}

let array: [CustomStringConvertible] = [5, 5.4, Float(5.4)]
switch array[2] {
    case _ as Int: print("Int")
    case _ as Float: print("Float")
    case _ as Double: print("Double")
    
    default: break
}
