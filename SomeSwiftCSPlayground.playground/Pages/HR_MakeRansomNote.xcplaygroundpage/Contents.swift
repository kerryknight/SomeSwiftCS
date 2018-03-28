//: [Previous](@previous)

import Foundation

let magazine = "give me one grand today night"
let note = "give one grand today"

func canCreateNote(magazine: String, note: String) -> String {
    // can't create if note is longer than magazine
    if note.count > magazine.count {
        return "No"
    }

    let magazineArray = magazine.components(separatedBy: " ")
    var magazineWords = [String: Int]()
    for word in magazineArray {
        if let value = magazineWords[word] {
            magazineWords[word] = value + 1
            continue
        }
        
        magazineWords[word] = 1
    }
    
    let noteArray = note.components(separatedBy: " ")
    for word in noteArray {
        if let value = magazineWords[word] {
            if value > 0 {
                magazineWords[word] = value - 1
            }
            
            if value - 1 == 0 {
                magazineWords[word] = nil
            }
            
            continue
        }
        
        return "No"
    }
    
    return "Yes"
}

print(canCreateNote(magazine: magazine, note: note))

//: [Next](@next)
