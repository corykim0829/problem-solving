//
//  main.swift
//  2018 kakao first secret map
//
//  Created by Cory Kim on 2020/01/23.
//  Copyright © 2020 corykim0829. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    func toBinaryStrArray(_ arr: [Int]) -> [String] {
        return arr.map { (row) -> String in
            var binaryStr = String(row, radix: 2)
            while binaryStr.count < n {
                binaryStr = "0" + binaryStr
            }
            return binaryStr
        }
    }
    
    let firstMap = toBinaryStrArray(arr1)
    let secondMap = toBinaryStrArray(arr2)
    
    for i in 0..<n {
        var finalMapRow = ""
        
        let firstMapsRow = firstMap[i].map({ String($0) })
        let secondMapsRow = secondMap[i].map({ String($0) })
        
        for i in 0..<n {
            if firstMapsRow[i] == "1" || secondMapsRow[i] == "1" {
                finalMapRow += "#"
            } else {
                finalMapRow += " "
            }
        }
        answer.append(finalMapRow)
    }
    
    return answer
}
