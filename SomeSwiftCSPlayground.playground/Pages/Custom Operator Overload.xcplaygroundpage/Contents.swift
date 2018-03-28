//: [Previous](@previous)

import Foundation

infix operator ^^: MultiplicationPrecedence

// Note, this doesn't take overflows into account; if the operation
// produces a result that Int can't represent, e.g. greater than
// meInt.max, then a runtime error occurs.
func ^^(lhs: Int, rhs: Int) -> Int {
    let l = Double(lhs)
    let r = Double(rhs)
    let p = pow(l, r)
    return Int(p)
}

let value = 7 ^^ 3
print(value)
//: [Next](@next)
