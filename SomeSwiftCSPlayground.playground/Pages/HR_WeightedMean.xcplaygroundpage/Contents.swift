//: [Previous](@previous)

import Foundation

let values = [10, 40, 30, 50, 20]
let weights = [1, 2, 3, 4, 5]
let totalWeight = Float(weights.reduce(0, +))
var weightedMean: Float = 0.0

for (value, weight) in zip(values, weights) {
    let valueF = Float(value)
    let weightF = Float(weight)
    weightedMean += (valueF * (weightF/totalWeight))
}

print(String(format:"%0.1f", weightedMean))
//: [Next](@next)
