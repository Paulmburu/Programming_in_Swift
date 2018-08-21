

//concatenation 
var str="Hello"
var smile = "😄"
var combined = str + " " + smile


// common operators
var length = combined.characters.count  // 7
print(combined.lowercased())
print(combined.uppercased())

//working with characters
for char in combined.characters {
    //loops seven times
    print(char)
}

// substrings
// var trail = combined.substringWithRange(Range<String.Index>(start: str.endIndex, end: combined.endIndex))  // " 😄"

// // contains

// if let range = str.rangeOfStrings("ello"){
//     print("ello")
// } else {
//     print("nope")
// }

Swift has many string methods, most inherited	
from the rich NSString API. But (spoiler alert)	 
you can add your own too.
// extension String {
//     func beginsWith(str: String) -> Bool {
//         if let range = self.rangeOfString(str){
//             return range.startIndex == self.startIndex
//         }
//         return false
//     }
//     func endsWith(str: String)-> Bool{
//         if let range = self.rangeOfString(str,options:NSStringCompareOptions.BackwardsSearch){
//             return range.endIndex == self.endIndex
//         }
//         return false
//     }
// }

// print("find".beginsWith("f"))       // true
// print("find".beginsWith("fi"))      // true
// print("find".beginsWith("fin"))     // true
// print("find".beginsWith("find"))    // true
// print("find".beginsWith("finder"))  // false

// print("find".endsWith("d"))         // true
// print("find".endsWith("nd"))        // true
// print("find".endsWith("ind"))       // true
// print("find".endsWith("find"))      // true
// print("find".endsWith(""))


// mutating

// combined.splice("🐈".characters, atIndex: combined.rangeOfString(smile)!.startIndex)
// combined.removeAtIndex(combined.rangeOfString(smile)!.startIndex)
// print(combined)