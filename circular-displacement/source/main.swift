import Foundation

func getInfo(nameFunc name: String, countElement: Int, countRotate: Int) {
    print("function: \(name)")
    print("count element array (N): \(countElement)")
    print("count rotate (K): \(countRotate)")
}

// ----------------------------------------------------------
// circularRotateWithExtraArray
// ----------------------------------------------------------


let k11 = 5
var array11 = stride(from: 50, to: 0, by: -1).map { element in
    return element
}

let k12 = 3
var array12 = (0 ... 20).map { _ in 
    Int(arc4random_uniform(20) + 1)
}

let k13 = 20
var array13 = (0 ... 15).map { element in
    return element
}

print("-----------------------------------------------------------------------\n")
print("Example of the function circularRotateWithExtraArray\n")
print("-----------------------------------------------------------------------\n")

// MARK: Example of the function circularRotateWithExtraArray for array11

getInfo(
    nameFunc: "circularRotateWithExtraArray",
    countElement: array11.count,
    countRotate: k11
)

print("Input:")
print(array11)

circularRotateWithExtraArray(
    arrayForRotate: &array11,
    k11
)

print("Output:")
print(array11)

print("\n")

// MARK: Example of the function circularRotateWithExtraArray for array12

getInfo(
    nameFunc: "circularRotateWithExtraArray",
    countElement: array12.count,
    countRotate: k12
)

print("Input:")
print(array12)

circularRotateWithExtraArray(
    arrayForRotate: &array12,
    k12
)

print("Output:")
print(array12)

print("\n")

// MARK: Example of the function circularRotateWithExtraArray for array13

getInfo(
    nameFunc: "circularRotateWithExtraArray",
    countElement: array13.count,
    countRotate: k13
)

print("Input:")
print(array13)

circularRotateWithExtraArray(
    arrayForRotate: &array13,
    k13
)

print("Output:")
print(array13)

print("\n")


// ----------------------------------------------------------
// circularRotateArray
// ----------------------------------------------------------

let k21 = 5
var array21 = stride(from: 50, to: 0, by: -1).map { element in
    return element
}

let k22 = 3
var array22 = (0 ... 20).map { _ in 
    Int(arc4random_uniform(20) + 1)
}

let k23 = 20
var array23 = (0 ... 15).map { element in
    return element
}

print("-----------------------------------------------------------------------\n")
print("Example of the function circularRotateArray\n")
print("-----------------------------------------------------------------------\n")

// MARK: Example of the function circularRotateArray for array21

getInfo(
    nameFunc: "circularRotateArray",
    countElement: array21.count,
    countRotate: k21
)

print("Input:")
print(array21)

circularRotateArray(
    arrayForRotate: &array21,
    k21
)

print("Output:")
print(array21)

print("\n")

// MARK: Example of the function circularRotateArray for array22

getInfo(
    nameFunc: "circularRotateArray",
    countElement: array22.count,
    countRotate: k22
)

print("Input:")
print(array22)

circularRotateArray(
    arrayForRotate: &array22,
    k22
)

print("Output:")
print(array22)

print("\n")

// MARK: Example of the function circularRotateArray for array23

getInfo(
    nameFunc: "circularRotateArray",
    countElement: array23.count,
    countRotate: k23
)

print("Input:")
print(array23)

circularRotateArray(
    arrayForRotate: &array23,
    k23
)

print("Output:")
print(array23)

print("\n")


// ----------------------------------------------------------
// circularRotateWithReverse
// ----------------------------------------------------------

let k31 = 5
var array31 = stride(from: 50, to: 0, by: -1).map { element in
    return element
}

let k32 = 3
var array32 = (0 ... 20).map { _ in 
    Int(arc4random_uniform(20) + 1)
}

let k33 = 20
var array33 = (0 ... 15).map { element in
    return element
}

print("-----------------------------------------------------------------------\n")
print("Example of the function circularRotateWithReverse\n")
print("-----------------------------------------------------------------------\n")

// MARK: Example of the function circularRotateWithReverse for array31

getInfo(
    nameFunc: "circularRotateWithReverse",
    countElement: array31.count,
    countRotate: k31
)

print("Input:")
print(array31)

circularRotateWithReverse(
    arrayForRotate: &array31,
    k31
)

print("Output:")
print(array31)

print("\n")

// MARK: Example of the function circularRotateWithReverse for array32

getInfo(
    nameFunc: "circularRotateWithReverse",
    countElement: array32.count,
    countRotate: k32
)

print("Input:")
print(array32)

circularRotateWithReverse(
    arrayForRotate: &array32,
    k32
)

print("Output:")
print(array32)

print("\n")

// MARK: Example of the function circularRotateWithReverse for array33

getInfo(
    nameFunc: "circularRotateWithReverse",
    countElement: array33.count,
    countRotate: k33
)

print("Input:")
print(array33)

circularRotateWithReverse(
    arrayForRotate: &array33,
    k33
)

print("Output:")
print(array33)

print("\n")

