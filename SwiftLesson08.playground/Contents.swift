//Dictionary
var dict = ["машина" : "car", "мужчина" : "man"]
let dict2 : [Int:String] = [0 : "car", 1: "man"]

dict["машина"]
dict2[0]
dict.count
dict.isEmpty

var dict3 = [String:String]()

dict["комп"] = "computer"
dict

Array(dict.keys)
Array(dict.values)

dict.updateValue("mac", forKey: "комп")

let comp = dict["комп"]

for key in dict.keys {
    print("key = \(key), value = \(dict[key]!)")
}

for (key, value) in dict {
    print("key = \(key), value = \(value)")
}
