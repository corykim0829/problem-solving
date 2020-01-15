//
//  main.swift
//  TheGreatestNumber
//
//  Created by Cory Kim on 2020/01/15.
//  Copyright © 2020 corykim0829. All rights reserved.
//

import Foundation

func solution(_ numbers:[Int]) -> String {
    let sorted: [Int] = numbers.sorted(by: { Int("\($0)\($1)")! > Int("\($1)\($0)")! })
    if sorted[0] == 0 {
        return "0"
    }
    return sorted.reduce("", { $0 + "\($1)" })
}
