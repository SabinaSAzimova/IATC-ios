//
//  Playground.swift
//  
//
//  Created by Sabina Azimova on 14.04.22.
//

import Foundation


// MARK: Exercise 1-1

var bestFriendName = "Aygun"

print(bestFriendName)


// MARK: Exercise 1-2

import Foundation

var name = "Sabina"
var address = "Baku"

print(name)
print(address)


// MARK: Exercise 1-3

import Foundation

var randomInt = Int.random(in: 10...20)

if randomInt % 4 == 0 {
    print("\(randomInt) divided by 4 is \(randomInt/4)")
}
else {
    print("\(randomInt) divided by 4 is \(Float(randomInt)/4)")
}


// MARK: Exercise 1-4

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


// MARK: Exercise 1-5

import Foundation

var x = Int.random(in: 0...100)
var y = Int.random(in: 0...100)
var z = Int.random(in: 0...100)

print("\(x) + \(y) + \(z) = \(x+y+z)")
