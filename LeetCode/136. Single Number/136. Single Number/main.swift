//
//  main.swift
//  136. Single Number
//
//  Created by Cory Kim on 2020/01/22.
//  Copyright © 2020 corykim0829. All rights reserved.
//

import Foundation

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var singleNumber = 0
        var numberDict = [Int:Int]()
        
        nums.forEach({ numberDict[$0] = (numberDict[$0] ?? 0) + 1 })
        numberDict.forEach { (key, value) in
            if value == 1 {
                singleNumber = key
            }
        }
        
        return singleNumber
    }
}
