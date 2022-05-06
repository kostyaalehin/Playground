struct Point {
    var x : Int
    var y : Int
//
//    mutating func moveByX(x: Int, byY y: Int) {
//        self.x += x
//        self.y += y
//    }
    
    mutating func moveByX(x: Int, byY y: Int) {
        self = Point(x: self.x + x, y: self.y + y)
    }
}

enum Color {
    case White
    case Black
    
    mutating func invert() -> Color {
        if self == .White {
            self = .Black
        } else {
            self = .White
        }
        return self
//        self = self == .White ? .Black : .White
    }
    func printColor() {
        if self == .White {
            print("White")
        } else {
            print("Black")
        }
    }
}
/*
func move(point: inout Point, byX x: Int, byY y: Int) -> Point {
    point.x += x
    point.y += y
    return point
}
*/

var c = Color.White
c.printColor()
c.invert()
c.printColor()
c.invert().printColor()
c.invert().printColor()
c.invert().printColor()


var point = Point(x: 1, y: 1)

//point = move(point: &point, byX: 2, byY: 4)
print(point)
point.moveByX(x: 15, byY: 12)
print(point)

var point2 = Point(x: 2, y: 2)
print(point2)

