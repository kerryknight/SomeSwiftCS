//: [Previous](@previous)

import Foundation

//let string: String = readLine()!
let string = "{{{{{{{{"
let array = Array(string)
var stack = [String]()
var balanced = true

for character in array {
    if "\(character)" == "{" {
        stack.insert("}", at: 0)
    }
    else if "\(character)" == "[" {
        stack.insert("]", at: 0)
    }
    else if "\(character)" == "(" {
        stack.insert(")", at: 0)
    }
    else {
        if stack.isEmpty || stack[0] != "\(character)" {
            balanced = false
            break
        }
        
        stack.remove(at: 0)
    }
}

if !stack.isEmpty {
    balanced = false
}

print(balanced == true ? "YES" : "NO")
//: [Next](@next)
