//
//  main.swift
//  k번째수
//
//  Created by Cory Kim on 2020/01/15.
//  Copyright © 2020 corykim0829. All rights reserved.
//

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var resultArr: [Int] = []
    
    commands.forEach { (arr) in
        let slicedArray = Array(array[arr[0] - 1...arr[1] - 1])
        let sortedArray = quicksort(slicedArray)
        resultArr.append(sortedArray[arr[2] - 1])
    }
    return resultArr
}

func quicksort<T: Comparable>(_ a: [T]) -> [T] {
    guard a.count > 1 else { return a }
    
    let pivot = a[a.count / 2]
    let less = a.filter({ $0 < pivot })
    let equal = a.filter({ $0 == pivot })
    let greater = a.filter({ $0 > pivot })
    
    return quicksort(less) + equal + quicksort(greater)
}
