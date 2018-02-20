import Foundation
/*:
 # Sorting Algorithms
 This purpose of this playground is to provide the *tools* (example code) and the *space* to help you with the implementation of the sorting algorithm you have devised with your partner.
 ## Example Code
 What follows is a series of examples showing how to do common operations with an array in Swift.
 ### Creating an empty array
 */
// Note the use of square brackets around the data type when the array is declared
var numbers : [Int] = []

//: ### Random number generation
// Generates a random number between the minimum and maximum values given (inclusive)
func random(between min: UInt32, and max: UInt32) -> Int {
    return Int(arc4random_uniform(max - min + 1) + min)
}

// Invoking (using) the function above
random(between: 1, and: 10)


