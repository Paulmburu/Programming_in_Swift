let num = 9

if (num<0){
    print("num is negative")
}else if num < 10{
    print("num is single digit")
} else {
    print("num is multi-digit")
}

if 7 % 2 == 2{
    print("7 is even")
} else{
    print("7 is odd")
}

var optionalString:String?="Hello?"

if let a = optionalString{
    print("a-> "+a)
}

optionalString = nil


if let b = optionalString{
    print("yep")
    print(b)
}else{
    print("nope")
}