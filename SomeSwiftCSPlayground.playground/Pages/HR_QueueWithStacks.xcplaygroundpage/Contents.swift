//: [Previous](@previous)

import Foundation

let numberOfInputs: Int = 2

struct TwoStackQueue<Element> {
    private var left: [Element] = []
    private var right: [Element] = []
    
    mutating func enqueue(_ newElement: Element) {
        right.append(newElement)
    }
    
    mutating func dequeue() -> Element? {
        reverseStacks()
        return left.popLast()
    }
    
    mutating func front() -> Element? {
        reverseStacks()
        return left[left.count - 1]
    }
    
    mutating private func reverseStacks() {
        if left.isEmpty {
            if right.isEmpty {
                return
            }
            
            left = right.reversed()
            right.removeAll()
        }
    }
}

enum Action: Int {
    case enqueue = 1
    case dequeue
    case print
}

var queue = TwoStackQueue<Int>()

for _ in 1...numberOfInputs {
    if let input = readLine() {
        let inputs = input.split(separator: " ")
        let inputParams = inputs.map { Int(String($0))! }
        
        switch inputParams[0] {
        case Action.enqueue.rawValue:
            queue.enqueue(inputParams[1])
        case Action.dequeue.rawValue:
            _ = queue.dequeue()
        case Action.print.rawValue:
            print("\(queue.front()!)")
        default:
            fatalError()
        }
    }
}

//: [Next](@next)
