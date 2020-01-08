//
//  main.swift
//  An incomplete player An incomplete player
//
//  Created by Cory Kim on 2020/01/08.
//  Copyright © 2020 corykim0829. All rights reserved.
//

import Foundation

func Solution(participant: [String], completion: [String]) -> String {
    var p = participant
    var count = 0
    
    completion.forEach { (player) in
        guard let index = p.firstIndex(of: player) else { return }
        p.remove(at: index)
    }
    
    participant.forEach { (player) in
        if player == p[0] { count += 1}
    }
    
    if count == 1 {
        print("\(p[0])는 참여자 명단에는 있지만, 완주자 명단에는 없기 때문에 완주하지 못했습니다.")
    } else {
        print("\(p[0])는 참여자 명단에는 \(count) 명이 있지만, 완주자 명단에는 한 명밖에 없기 때문에 한명은 완주하지 못했습니다.")
    }
    return p[0]
}

//print(Solution(participant: ["leo", "kiki", "eden"], completion: ["kiki", "eden"]))
//print(Solution(participant: ["mislav", "stanko", "mislav", "ana"], completion: ["stanko", "mislav", "ana"]))
Solution(participant: ["marina", "josipa", "nikola", "vinko", "filipa"], completion: ["josipa", "filipa", "marina", "nikola"])
