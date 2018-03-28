//: [Previous](@previous)

import Foundation

func factorial(_ n: Int, _ result: Int) -> Int {
    guard n > 0 else { return result }
    return factorial(n - 1, n * result)
}

func factorial(_ n: Int) -> Int {
    return factorial(n, 1)
}

let result = factorial(4)
print(result) // 24
//: [Next](@next)
