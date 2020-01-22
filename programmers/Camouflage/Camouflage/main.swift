//
//  main.swift
//  Camouflage
//
//  Created by Cory Kim on 2020/01/22.
//  Copyright © 2020 corykim0829. All rights reserved.
//

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var clothesNumbersDict = [String: Int]()
    clothes.forEach({ clothesNumbersDict[$0[1]] = (clothesNumbersDict[$0[1]] ?? 0) + 1 })
    return clothesNumbersDict.values.reduce(1, { $0 * ($1 + 1) }) - 1
}
