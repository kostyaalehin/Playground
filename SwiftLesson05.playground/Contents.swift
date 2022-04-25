import Darwin

let total = 5 + 6 - 8 * 3 - 5 / 10

let div = 10 / 3
let rest = 13 % 3

var small: UInt8 = 0xff

//переполнение
small = small &+ 5

let str = "Hi " + "sd"

/*
if a < b {
    c = a
} else {
    c = b
}

c = a < b ? a : b
*/
var c: Int
let text = "123"
let n = Int(text)
/*
if n != nil {
    c = n!
} else {
    c = 0
}
*/

/*
if let opt = n {
    c = opt
} else {
    c = 0
}
*/

c = n ?? 0

var sum = 5
sum = sum + 1
sum += 1

//шахматная доска
let cell = (x:5, y:4)
if cell.x % 2 == cell.y % 2 {
    print("black")
} else {
    print("white")
}
