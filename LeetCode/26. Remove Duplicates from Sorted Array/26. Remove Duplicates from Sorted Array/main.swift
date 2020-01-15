//
//  main.swift
//  26. Remove Duplicates from Sorted Array
//
//  Created by Cory Kim on 2020/01/15.
//  Copyright © 2020 corykim0829. All rights reserved.
//

import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var s: Set<Int> = []
    nums.forEach({ s.insert($0) })
    nums = quicksort(Array(s))
    return s.count
}

func quicksort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }
    
    let pivot = array[array.count / 2]
    let less = array.filter({ $0 < pivot })
    let equal = array.filter({ $0 == pivot })
    let greater = array.filter({ $0 > pivot })
    
    return quicksort(less) + equal + quicksort(greater)
}

var nums = [1,1,2]
removeDuplicates(&nums)
