let numbers = [4, 3, 12, 12, 123, 243, 54, 13, 1, 4, 6, 9]

func filterArray(array: [Int], f: (Int) -> Bool) -> [Int] {
    
    var filtered = [Int]()
    for i in array {
        if f(i) {
            filtered.append(i)
        }
    }
    return filtered
}

/*
func compare(i: Int) -> Bool {
    return i % 2 == 0
}

func compare2(i: Int) -> Bool {
    return i % 2 == 1
}
*/

filterArray(array: numbers, f: {(i: Int) -> Bool in
    return i % 2 == 0
})

filterArray(array: numbers, f: {(i: Int) -> Bool in
    return i % 2 == 1
})

filterArray(array: numbers, f: {(i: Int) -> Bool in
    return i % 3 == 0
})

filterArray(array: numbers, f: {(i: Int) -> Bool in
    return i < 10
})

let a =
filterArray(array: numbers, f: {i in i % 2 == 1})

let a1 =
filterArray(array: numbers, f: {$0 % 2 == 1})

let a3 =
filterArray(array: numbers) {$0 % 2 == 1}

let array = [1, 2, 3, 243]
var count = 0

let a4 =
filterArray(array: numbers) { value in
    for include in array {
        count += 1
        if include == value {
            return true
        }
    }
    return false
}
count = 0

var dict = [Int:Bool]()
for value in array {
    dict[value] = true
}

let a5 =
filterArray(array: numbers) { value in
    count
    return dict[value] != nil
}
