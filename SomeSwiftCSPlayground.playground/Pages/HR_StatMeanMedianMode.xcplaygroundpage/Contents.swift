//: [Previous](@previous)

import Foundation

let array = [64630, 11735, 14216, 99233, 14470, 4978, 73429, 38120, 51135, 67060, 38120, 51135, 67060, 67060]
let sorted = array.sorted{ $0 < $1 }

// mean
let avg = Float(array.reduce(0, +)) / Float(array.count)
print(String(format: "%0.1f", avg))

// median
if sorted.count % 2 == 0 {
    // even number of objects
    let middleIndex = Int(floor(Double(sorted.count) / 2))
    let bottom = sorted[middleIndex - 1]
    let top = sorted[middleIndex]
    let median = Float(bottom + top) / 2
    print(median)
}
else {
    // odd number of objects, just take middle
    let middleIndex = sorted.count / 2
    let median = sorted[middleIndex]
    print(String(format: "%0.1f", Float(median)))
}

// mode
var numbers = [Int: Int]()
for number in array {
    if let existing = numbers[number] {
        numbers[number] = existing + 1
    }
    else {
        numbers[number] = 1
    }
}

var maxOccurrences = 0
var mode = Int.max

for (key, value) in numbers {
    if value == maxOccurrences {
        maxOccurrences = value
        if key < mode {
            mode = key
        }
    }
    
    if value > maxOccurrences {
        maxOccurrences = value
        mode = key
    }
}

print(mode)

