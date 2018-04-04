//: [Previous](@previous)

// Find smallest common number
//
// Given three integer arrays sorted in ascending
// order, find the smallest number that is common
// in all three arrays.
//
// Code adapted to Swift from Educative.io's Coderust 2.0
// https://www.educative.io/collection/5642554087309312/5679846214598656

import Foundation

func findLeastCommonNumber(array1: [Int], array2: [Int], array3: [Int]) -> Int? {
    var i = 0
    var j = 0
    var k = 0
    
    while i < array1.count && j < array2.count && k < array3.count {
        // found the smallest common number
        if array1[i] == array2[j] && array2[j] == array3[k] {
            return array1[i]
        }
        
        // advance iterator for smallest value
        if array1[i] <= array2[j] && array1[i] <= array3[k] {
            i += 1
        }
        else if array2[j] <= array1[i] && array2[j] <= array3[k] {
            j += 1
        }
        else if array3[k] <= array1[i] && array3[k] <= array2[j] {
            k += 1
        }
    }
    
    return nil
}

let array1 = [1, 2, 5, 6, 9, 28, 39, 43]
let array2 = [-3, 2, 4, 5, 39, 44, 50]
let array3 = [10, 11, 12, 13, 29, 39, 46, 50]

print(findLeastCommonNumber(array1: array1, array2: array2, array3: array3)!) // 39

//: [Next](@next)
