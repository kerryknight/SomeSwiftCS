//: [Previous](@previous)

import Foundation

let string1 = "beauxxxxxx"
let string2 = "beauyyy"

var masterList = [Character: Int]()
for character in string1 {
    if let char = masterList[character] {
        masterList[character] = char + 1
        continue
    }
    
    masterList[character] = 1
}

var counter: Int = 0

// as we go through string2, remove any duplicates from string1's dict
for character in string2 {
    if let value = masterList[character] {
        if value > 0 {
            masterList[character] = value - 1
        }
        
        if value - 1 == 0 {
            masterList[character] = nil
        }
        
        continue
    }
    
    // keep track of values only seen in string2
    counter += 1
}

// add up all remaining string1 values
let string2Total = masterList.values.reduce(0, +)

print(string2Total + counter)

//: [Next](@next)
