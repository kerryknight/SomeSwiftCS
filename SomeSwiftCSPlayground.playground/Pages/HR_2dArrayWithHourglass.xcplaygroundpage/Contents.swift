//: Playground - noun: a place where people can play
import Foundation

func findHourGlassMax(_ array: [[Int]]) {
    var max: Int?
    for i in 0...array.count/2 {
        let arr1 = array[i]
        let arr2 = array[i+1]
        let arr3 = array[i+2]
        
        for j in 0...arr1.count/2 {
            let row1 = arr1[j] + arr1[j+1] + arr1[j+2]
            let row2 = arr2[j+1]
            let row3 = arr3[j] + arr3[j+1] + arr3[j+2]
            let sum = row1 + row2 + row3
            
            if max == nil {
                max = sum
                continue
            }
            
            if let newMax = max, sum > newMax {
                max = sum
            }
        }
    }
    
    if let max = max {
        print(max)
    }
}

let array = [[4, 1, 1, 6, 1, 0],
             [0, 1, 5, 0, 7, 0],
             [1, 1, 1, 0, 0, 0],
             [0, 3, -9, -4, -4, 0],
             [0, 9, 0, -2, 0, 0],
             [3, 9, 8, 2, 4, 9]]

findHourGlassMax(array)

//let array = [[1, 1, 1, 0, 0, 0],
//             [0, 1, 0, 0, 0, 0],
//             [1, 1, 1, 0, 0, 0],
//             [0, 9, 2, -4, -4, 0],
//             [0, 0, 0, -2, 0, 0],
//             [0, 0, -1, -2, -4, 0]]
//
//findHourGlassMax(array)



