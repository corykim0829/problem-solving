//
//  main.swift
//  202. Happy Number
//
//  Created by Cory Kim on 2020/01/22.
//  Copyright © 2020 corykim0829. All rights reserved.
//

import Foundation

class Solution {
    func isHappy(_ n: Int) -> Bool {
        if n <= 0 {
            return false
        }
        if n == 1 {
            return true
        }
        
        var number = n
        var sumSets = Set<Int>()
        
        while true {
            var sum = 0
            String(number).map({ Int(String($0))! }).forEach({ sum += $0 * $0 })
            number = sum
            
            if number == 1 {
                return true
            }
            
            if sumSets.contains(number) {
                return false
            }
            
            sumSets.insert(sum)
        }
    }
}
