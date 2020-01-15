//
//  main.swift
//  String Compression
//
//  Created by Cory Kim on 2020/01/09.
//  Copyright © 2020 corykim0829. All rights reserved.
//

import Foundation

func solution(_ s:String) -> Int {
    let length = s.count
    var answer = length
    var leftStr = s
    
    for i in 0..<length / 2 {
        var endIndex = leftStr.index(leftStr.startIndex, offsetBy: i)
        var startIndexForLeftStr = leftStr.index(leftStr.startIndex, offsetBy: i + 1)
        
        var dividedStr = leftStr[...endIndex]
        leftStr = String(leftStr[startIndexForLeftStr...])
        
        
    }
    
    return 0
}

solution("abababaabababab")
