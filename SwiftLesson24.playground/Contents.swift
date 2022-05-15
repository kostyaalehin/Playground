struct Point {
    var x: Int
    var y: Int
}

var p1 = Point(x: 2, y: 3)
var p2 = Point(x: 3, y: 5)

func + (a: Point, b: Point) -> Point {
    return Point(x: a.x + b.x, y: a.y + b.y)
}

func * (a: Point, b: Point) -> Point {
    return Point(x: a.x * b.x, y: a.y * b.y)
}

print(p1 + p2)
print(p1 * p2)

p1 = p1 + p2

func += (a: inout Point, b: Point) {
    a = a + b
}

p1
p2
print(p1 += p2)
print(p1)

func == (a: Point, b: Point) -> Bool {
    return a.x == b.x && a.y == b.y
}

p1 == p1

infix operator %%%

func %%% (a: inout Point, b: Point) -> Point {
    a.x += b.y
    a.y += b.x
    return a
}

p1 %%% p2
print(p1)

var s = "Hello, World!"

import Foundation

func -= (s1: inout String, s2: String) {
    let set = CharacterSet(charactersIn: s2)
    let components  = s1.components(separatedBy: set)
    s1 = components.joined(separator: "")
}

s -= "loW"
