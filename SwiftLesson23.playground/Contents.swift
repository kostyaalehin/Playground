extension UInt8 {
//extension Int8 {
    func binary() -> String {
        var result = ""
        for i in 0..<8 {
            let mask = 1 << i
            let set = Int(self) & mask != 0
            result = (set ? "1" : "0") + result
        }
        return result
    }
}

/*
//var a: UInt8 = 57
var a: Int8 = 57
a.binary()

a = 0b01111111
a.binary()
a = a &+ 1
a.binary()
a = a &- (-1)
a.binary()

a = 0
a = a - 1
a.binary()
a = a - 1
a.binary()

a = 0b00100001
a = a &* 4
a.binary()
*/

/*
0b11111111
0xff
255
*/

/*
a = 0b00111001
a.binary()
(5 as UInt8).binary()

a = a + 5
a.binary()
(4 as UInt8).binary()

a = a - 0b00000100
a.binary()

//a = a * 2
//a = a << 3
a = a &* 8
a.binary()

a = 0b11111111
a = a &+ 1

a = 0b00000000
a = a &- 1
*/

var a: UInt8 = 0b00110011
var b: UInt8 = 0b11100001

a.binary()
b.binary()
(a | b).binary()
(a & b).binary()
(a ^ b).binary()
(~a).binary()


a.binary()
b = 0b00010001
b.binary()
(a & b).binary()

b = 0b000000010
a.binary()
b.binary()
(a | b).binary()

a.binary()
b.binary()
(a ^ b).binary()

b = 0b00010000
a.binary()
(~b).binary()
(a & ~b).binary()

enum CheckList : UInt8 {
    case Bread = 0b00000001
    case Chicken = 0b00000010
    case Apples = 0b00000100
    case Pears = 0b00001000
}

let checkList : UInt8 = 0b00001001
let bread = checkList & CheckList.Bread.rawValue
bread.binary()

let chicken = checkList & CheckList.Chicken.rawValue
chicken.binary()
