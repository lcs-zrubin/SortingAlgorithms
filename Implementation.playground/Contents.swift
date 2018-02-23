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

// Invoke (use) the function above
random(between: 1, and: 50)

//: ### Creating an empty array
// Note the use of square brackets around the data type when the array is declared
var numbers : [Int] = []

//: ### Adding to the end of an array
// A single random number is added to the end of the array
numbers.append( random(between: 1, and: 50) )

// Add another random number to the end of the array
numbers.append( random(between: 1, and: 50) )

//: ### Swapping numbers
// What's in the array?
numbers

// Move the value at index 1 to index 0 and vice versa
let temporaryValue = numbers[0]
numbers[0] = numbers[1]
numbers[1] = temporaryValue

// Now what's in the array?
numbers

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

//: ### Reset an array
// Make the array an empty list again
numbers = []

//: ### Use a loop to populate an array
// Place twenty random values between 1 and 50 in the array
for _ in 1...20 {
    numbers.append( random(between: 1, and: 50) )
}

// What is now in the array?
numbers

//: ### Iterate over only the values of an array
// Print all the values, from first to last
for number in numbers {
    print(number)
}
print("==================")

//: ### Iterate over the indexes and values, moving from start to end
// Print the index and value, from first to last
for i in 0..<numbers.count {
    print("Index is \(i) and the value is \(numbers[i])")
}
print("==================")

//: ### Iterate over the indexes and values, moving from end to start
// Print the index and value, from last to first
for i in stride(from: numbers.count - 1, through: 0, by: -1) {
    print("Index is \(i) and the value is \(numbers[i])")
}

//: ### Iterate until a list is empty
// A while loop is like a combination of an "if" statement and a regular "for" loop
// The while loop iterates so long as the test condition remains true
//
// while CONDITION {
//      ... do thing(s) ...
// }
while numbers.count > 0 {
    numbers.remove(at: numbers.count - 1)   // Remove number at end of the array
}

// What's left in the array?
numbers

/*:
 ## Implementation
 With your understanding of the algorithm you've discussed, and the tools above, work to implement your algorithm using code.
 
 Take it one step at a time.
 
 Check results from your code against what you know should happen when you act out your algorithm using the cards.
 
 Commit often. Have fun!
 
 */

// Begin your implementation below...
//Creating an empty array
var unsorted : [Int] = []


//Add 20 random numbers to unsorted
for _ in 1...20 {
    unsorted.append( random(between: 1, and: 50) )
}

unsorted

if unsorted[0] > unsorted[1] {
    let tempValue = unsorted[0]
    unsorted[0] = unsorted[1]
    unsorted[1] = tempValue
    
}

unsorted

