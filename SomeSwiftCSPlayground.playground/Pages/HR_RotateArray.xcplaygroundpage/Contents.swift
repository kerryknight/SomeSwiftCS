//: [Previous](@previous)

import Foundation

let count = 9
let array: [Int] = [1, 2, 3, 4, 5, 6, 7, 8]
let shifts: Int = count % array.count

let array1 = array[..<shifts]
let array2 = array[shifts...]
let array3 = array2 + array1

print(array3.map { "\($0)" }.joined(separator: " "))

//: [Next](@next)
