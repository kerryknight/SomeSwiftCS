//: [Previous](@previous)

import Foundation

struct Stack<Element> {
    fileprivate var array = [Element]()
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    mutating func push(_ element: Element) {
        array.append(element)
    }
    
    mutating func pop() -> Element? {
        return array.popLast()
    }
    
    func peek() -> Element? {
        return array.last
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        let topDivider = "--Stack--\n"
        let bottomDivider = "\n---------\n"
        let stackElements = array.map { "\($0)" }.reversed().joined(separator: "\n")
        return topDivider + stackElements + bottomDivider
    }
}

var bookStack = Stack<String>()
bookStack.push("book one")
bookStack.push("book two")
bookStack.push("book three")
bookStack.push("book four")
print(bookStack)

//: [Next](@next)
