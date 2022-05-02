
func calculateMoney(wallet: [Int], type: Int? = nil) -> (total: Int, count: Int) {
    
    var sum = 0
    var count = 0
    
    for value in wallet {
        if (type == nil) || (value == type!) {
            sum += value
            count += 1
        }
    }
    
    return (sum, count)
}

func calculateMoney(range: Int...) -> Int {
    
    var sum = 0
    for value in range {
        sum += value
    }
    return sum
}

let wallet = [100, 5, 1, 5, 5, 20, 50, 100, 1, 1]

var (money, count) = calculateMoney(wallet: wallet, type: nil)
money
count

calculateMoney(wallet: wallet, type: 5)
calculateMoney(range: 5, 5, 2, 1, 10)

func sayHi() {
    print("Hi!")
}

let hi: () = sayHi()

