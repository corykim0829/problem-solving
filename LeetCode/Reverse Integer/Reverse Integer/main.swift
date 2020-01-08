//
//  main.swift
//  Reverse Integer
//
//  Created by Cory Kim on 2020/01/08.
//  Copyright © 2020 corykim0829. All rights reserved.
//

import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
        let number = abs(x)
        var reversedNumber = 0
        var position = 1
        
        String(number).forEach { (c) in
            reversedNumber += Int(String(c))! * position
            position *= 10
        }
        
        if x < 0 { reversedNumber = -reversedNumber }
        let bitOf32 = Int(pow(2.0, 31.0))
        if reversedNumber < -bitOf32 || reversedNumber > bitOf32 - 1 { return 0 }
        return reversedNumber
    }
}

let sol = Solution()
print(sol.reverse(1563847412))
