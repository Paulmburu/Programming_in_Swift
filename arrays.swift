import Foundation

// Type inference FTW
var strings = ["a", "b", "c"]

// Declare the type of contained elements
var strings2: [String] = ["d", "e", "f"]

// Declare an empty array
var strings3 = [String]()

// fill an array
var strings4 = [String](count: 3, repeatedValue: "hey")

// Arrays must contain values of a single type
//appending
strings +=["d"]
strings.append("e")
strings += ["f", "g"]

// joining 
strings3 = strings + strings2

// checking length
print(strings.count)        // 7

// accessing elements
print(strings[0])           // a
print(strings.first!)       // a
print(strings[strings.endIndex - 1])  // g
print(strings.last!)        // g

// assigning elements
strings[0] = "a"

// slices
strings[0..<1] = ["a"]      // exclusive (basically the same as the prev assingment)
strings[0...1] = ["a", "b"] // Inclusive
strings[0...3]              // ["a", "b", "c", "d"]
strings[0..<strings.endIndex] // ["a", "b", "c", "d", "e", "f", "g"]


// Methods
if strings.isEmpty {
    print("empty")
} else{
    print("populated")      //populated
}

strings.insert("a", atIndex: 0)
print(strings.removeAtIndex(0)) // a
strings.map({
    (str: String)-> String in
    return str + "0"
})                              // ["a0", "b0", "c0", "d0", "f0", "g0"]
strings.removeLast()

// clearing
strings.removeAll(keepCapacity: false)
strings = []

// using a loop to create a multidimensional array
var rows = 10, cols = 10.
var dimensional = Array<Array<Int>>()
for col in 0..<10{
    dimensional.append(Array(count: rows, repeatedValue:Int()))
}