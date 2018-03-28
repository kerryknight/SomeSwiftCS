//: [Previous](@previous)

import Foundation

//func readInt() -> Int {
//    if let input = readLine() {
//        let inputNumberCharacters = input.split(separator: " ").map { Int(String($0))! }
//        return inputNumberCharacters[1]
//    }
//
//    return -1
//}
//
//func readIntArray() -> [Int] {
//    if let input = readLine() {
//        let inputNumberCharacters = input.split(separator: " ")
//        return inputNumberCharacters.map { Int(String($0))! }
//    }
//    return []
//}

let count = 9
let array: [Int] = [1, 2, 3, 4, 5, 6, 7, 8]
let shifts: Int = count % array.count

let array1 = array[..<shifts]
let array2 = array[shifts...]
let array3 = array2 + array1

print(array3.map { "\($0)" }.joined(separator: " "))

//: [Next](@next)
