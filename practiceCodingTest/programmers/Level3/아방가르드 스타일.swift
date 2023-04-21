//
//  아방가르드 스타일.swift
//  PracticeCodingTest
//
//  Created by 김유준 on 2023/04/13.
//

import Foundation

func avantGardeSolution(_ n:Int) -> Int {
    var dp = Array(repeating: 0, count: 100001)
    let marginTarget = 1000000007
     
     dp[1] = 1
     dp[2] = 3
     dp[3] = 10
     
     switch n {
     case 1...3:
         return dp[n]
     default:
         for temp in 4...n {
             let temp1 = (dp[temp-3] * dp[3])
             let temp2 = (dp[temp-2] * dp[2])
             let temp3 = (dp[temp-1] * dp[1])
             let multiple5Point = temp % 5 == 0 ? 1 : 0
             let multiple6Point = temp % 6 == 0 ? 4 : 0
             dp[temp] = (temp1 + temp2 + temp3 + multiple5Point +  multiple6Point)%marginTarget
         }
     }
     
     return dp[n]
}

func testavantGardeSolution(_ box:[Int], _ n:Int) -> Int {
    
    return box[0...1].map { $0/n }.reduce(1, *) * box[2]/n
}
