//
//  main.swift
//  10989
//
//  Created by Cory Kim on 2020/01/15.
//  Copyright © 2020 corykim0829. All rights reserved.
//

import Foundation

var n: Int = 0
var numbers: [Int] = []

func Input() {
    n = Int(readLine()!)!
    
    for _ in 0..<n {
        numbers.append(Int(readLine()!)!)
    }
}

func Solution(_ numbers: [Int]) {
    let sorted = quicksort(numbers)
    sorted.forEach({ print($0) })
}

func quicksort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }
    let pivot = array[array.count / 2]
    
    let less = array.filter({ $0 < pivot })
    let equal = array.filter({ $0 == pivot })
    let greater = array.filter({ $0 > pivot })
    
    return quicksort(less) + equal + quicksort(greater)
}

Input()
Solution(numbers)

// 메모리 초과
