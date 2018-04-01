//: [Previous](@previous)

import Foundation

// Method #1
func factorial(_ n: Int, _ result: Int) -> Int {
    guard n > 0 else { return result }
    return factorial(n - 1, n * result)
}

func factorial(_ n: Int) -> Int {
    return factorial(n, 1)
}

print(factorial(4)) // 24

// Method #2
func factorial(of number: Int) -> Int {
    return (1...number).reduce(1) { result, number in
        return result * number
    }
}

print(factorial(of: 4))
//: [Next](@next)
