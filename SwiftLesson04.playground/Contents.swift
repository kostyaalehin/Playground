
// продажи
/*
50 + 20 = 70
10 - 10 = 0
*/
//server requrst
/*
is it Saturday?

true / false / nil
*/

var apples: Int? = 5

//apples = nil

if apples == nil {
    print("nil apples")
} else {
    //print(apples)
    
    _ = apples! + 2
}

if var number = apples {
    number = number + 2
} else {
    print("nil apples")
}

let age = "20"
if Int(age) != nil {
    let ageNumber = Int(age);
    print (ageNumber!)
}

var apples2: Int! = nil
apples2 = 2

assert(apples2 != nil, "oh no!!!")

apples2 = apples2 + 2
