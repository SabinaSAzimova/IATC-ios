import Foundation

var x = Int.random(in: 0...100)

// a) x < 22
if x < 22 {
    print("The number \(x) is less than 22.")
}

// b) x > 22
else if x > 22 {
    print("The number \(x) is greater than 22.")
}

// x = 22 is not considered in the exercise
// c) the reminder of the division by 2
    print("The remainder of \(x) divided by 2 is \(x%2).")


