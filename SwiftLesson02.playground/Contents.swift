
let bigNumber = 19_280_198_201_982
let oct = 0o12
let number: UInt8 = 255
let hex     = 0xff
let binary  = 0b11111111

Int.max
Int8.max
Int8.min
UInt8.max
UInt8.min

13.23423e2
13.23423e-2

// для 16-й системы используется символ p (2 в степени)
0x5p2
0x5p-2

/*
//let a = 5
//let b = 5.0
//let c = a + Int(b)

let a = 5
let b = 5.5
let c = Double(a) + b
*/

//let c = 5 + 5.2

/*
typealias newNumber = Int
let a = 5
let b = 5.4
let c = a + newNumber(b)

let d = false
if d {
    print("Hi!")
} else {
    print("Bye!")
}
*/

// HomeWork

// №1
print("Максимальное значение Int = \(Int.max)\nМаксимальное значение UInt8 = \(UInt8.max)\nМинимальное значение Int = \(Int.min)\nМинимальное значение UInt8 = \(UInt8.min)")

// №2
let a = 1
let b: Float = 2.3
let c = 4.5
let x = a + Int(b) + Int(c)
let y = Float(a) + b + Float(c)
let z = Double(a) + Double(b) + c

// №3
if Double(x) > z {
    print("\(x) > \(z)")
} else {
    print("\(x) < \(z)")
}
