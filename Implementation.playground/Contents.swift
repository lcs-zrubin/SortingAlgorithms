import Foundation
/*:
 # Sorting Algorithms
 This purpose of this playground is to provide the *tools* (example code) and the *space* to help you with the implementation of the sorting algorithm you have devised with your partner.
 ## Example Code
 */
//: ### Random number generation
// Generates a random number between the minimum and maximum values given (inclusive)
func random(between min: UInt32, and max: UInt32) -> Int {
    return Int(arc4random_uniform(max - min + 1) + min)
}

// Invoking (using) the function above
random(between: 1, and: 50)

//: ### Creating an empty array
// Note the use of square brackets around the data type when the array is declared
var numbers : [Int] = []

//: ### Adding to the end of an array
// A single random number is added to the end of the array
numbers.append( random(between: 1, and: 50) )

// Add another random number to the end of the array
numbers.append( random(between: 1, and: 50) )

//: ### Inserting at a specific position in an aray
// Add the number 15 between the numbers at index 0 and index 1
// NOTE: Observe that the prior value at index 1 is pushed forward to index 2
numbers.insert(15, at: 1)

// Add the number 45 to the start of the array (index 0)
// NOTE: Observe that all the other values are pushed forward one position
numbers.insert(45, at: 0)

//: ### Removing a value at a specific position
// Remove the third element (index 2)
numbers.remove(at: 2)
// What is now in the array?
numbers
