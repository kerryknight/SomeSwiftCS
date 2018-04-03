//: [Previous](@previous)

// Find Maximum Value in a Sliding Window
//
// Given a large array of integers and a window
// of arbitrary size, find the current maximum in the
// window as the window slides through the entire array
//
// Code adapted to Swift from Educative.io's Coderust 2.0
// https://www.educative.io/collection/5642554087309312/5679846214598656

import Foundation

func findMaxSlidingWindow(array: [Int], windowSize: Int) {
    guard windowSize < array.count else { return }
    
    // we could improve big-O and clarity if this was a deque
    var window = [Int]()

    // find out max for first window
    for i in 0 ..< windowSize {
        while !window.isEmpty && array[i] >= array[window[window.count - 1]] {
            window.removeLast()
        }
        
        window.append(i)
    }
    
    print("Max: \(array[window[0]])")
    
    for i in windowSize ..< array.count {
        // remove all numbers that are smaller than
        // current number from the tail of array
        while window.count > 0 && array[i] >= array[window[window.count-1]] {
            window.removeLast()
        }
        
        // remove first number if it doesn't fall inside the window anymore
        if window.count > 0 && (window[0] <= i - windowSize) {
            window.removeFirst()
        }
        
        window.append(i)
        print("Max: \(array[window[0]])")
    }
}

findMaxSlidingWindow(array: [-7, 1, -5, 1, -1, 6, 9, -4, 10], windowSize: 3)
// loop 1: max of window of 3 numbers: prints '1'
// loop 2: max of window of 3 numbers: prints '1'
// loop 3: max of window of 3 numbers: prints '1'
// loop 4: max of window of 3 numbers: prints '6'
// loop 5: max of window of 3 numbers: prints '9'
// loop 6: max of window of 3 numbers: prints '9'
// loop 7: max of window of 3 numbers: prints '10'

//: [Next](@next)
