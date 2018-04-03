//: [Previous](@previous)

// Search a Rotated Array
//
// Search for a given number in a sorted array that
// has been rotated by some arbitrary number.
//
// Code adapted to Swift from Educative.io's Coderust 2.0
// https://www.educative.io/collection/5642554087309312/5679846214598656

import Foundation

// this is a somewhat modified binary search
func binarySearch(_ array: [Int], value: Int, range: CountableClosedRange<Int>) -> Int {
    let end = range.upperBound
    let start = range.lowerBound
    
    if start > end {
        return -1
    }
    
    let mid = start + (end - start) / 2
    if array[mid] == value {
        print("Found at index: \(mid)")
        return mid
    }
    
    if array[start] < array[mid] && value < array[mid] && value >= array[start] {
        return binarySearch(array, value: value, range: start...(mid - 1))
    }
    else if array[mid] < array[end] && value > array[mid] && value <= array[end] {
        return binarySearch(array, value: value, range: (mid + 1)...end)
    }
    else if array[start] > array[mid] {
        return binarySearch(array, value: value, range: start...(mid - 1))
    }
    else if array[end] < array[mid] {
        return binarySearch(array, value: value, range: (mid + 1)...end)
    }
    
    return -1
}

func binarySearchRotated(array: [Int], value: Int) -> Int {
    return binarySearch(array, value: value, range: 0...(array.count - 1))
}

// [1, 2, 3, 4, 5, 6, 7, 8, 9] has been rotated 3 places
binarySearchRotated(array: [7, 8, 9, 1, 2, 3, 4, 5, 6], value: 9) // Found at index: 2

//: [Next](@next)
