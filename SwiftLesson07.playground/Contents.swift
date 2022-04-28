let constArray = ["a", "b", "c", "d"]

constArray.count

var array = [String]()

if array.isEmpty {
    print("array is empty")
}

array += constArray

array += ["e"]

array.append("f")

var array2 = array

array
array2

array2[0] = "1"

array
array2

//array[1...4] = ["0"]

array.insert("-", at: 3)

array.remove(at: 3)

//let test = [Int](repeating: 100, count: 3)
let money = [100, 1, 5, 20, 1, 50, 1, 1, 20, 1]

var i = 0
var sum = 0
for (index, value) in money.enumerated() {
    print ("i =  \(index) value\(value)")
    sum += value
}
sum = 0

for i in 0..<money.count {
    sum += money[i]
}
sum = 0

for i in money {
    sum += i
}
sum
