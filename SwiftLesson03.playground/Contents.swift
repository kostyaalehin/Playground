// Tuples

// let simpleTuple: (Int, String, Bool, Double) = (1, "Hello", true, 2.5)
let simpleTuple = (1, "Hello", true, 2.5)

let (number, greatings, check, decimal) = simpleTuple

number
greatings
check
decimal

let (_, _, check2, _) = simpleTuple

check2

simpleTuple.0
simpleTuple.1
simpleTuple.2
simpleTuple.3

var tuple = (index:1, phrase:"Hello", registered:true, latency:2.5)
tuple.latency
tuple.index
tuple.phrase

//change tuple's value
tuple.index = 2

/*
let a = (x:1, y:2)
var b = (x:2, y:3)

b = a
*/
/*
let redColor = "red"
let blueColor = "blue"
let greenColor = "green"
*/

let (redColor, blueColor, greenColor) = ("red", "blue", "green")

redColor
greenColor
blueColor

let totalNumper = 5
let merchantName = "Alex"
print("\(totalNumper) \(merchantName)")
print((totalNumper, merchantName))
print(simpleTuple)

// HomeWork
// #1

let sportTuple = (pushUps: 20, pullUps: 5, sitUps: 40)
print(sportTuple)
print("My Push Ups is \(sportTuple.pushUps), my pull-Ups is \(sportTuple.pullUps), my sit-Ups is \(sportTuple.sitUps)")

// #2

var secondSportTuple = (pushUps: 10, pullUps: 10, sitUps: 20)
secondSportTuple.pushUps = sportTuple.pushUps
secondSportTuple.pullUps = sportTuple.pullUps
secondSportTuple.sitUps = sportTuple.sitUps
print(secondSportTuple)
