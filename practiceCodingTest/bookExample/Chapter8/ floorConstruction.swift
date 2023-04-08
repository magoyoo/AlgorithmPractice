//
//   floorConstruction.swift
//  PracticeCodingTest
//
//  Created by 김유준 on 2023/04/08.
//

import Foundation

func floorConstruction(_ n: Int) -> Int{
    
    var dp: [Int] = Array(repeating: 0, count: n + 1)
    
    dp[1] = 1
    dp[2] = 3

    for i in 3..<n+1 {
        dp[i] = dp[i-1] + dp[i-2] * 2 % 796796
    }
    
    return dp[n]
}
