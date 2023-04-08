import Foundation


func efficientMoney(_ n: Int, _ m: Int, _ array: [Int]) -> Int{
    
    var dp = Array(repeating: 10001, count: m + 1)
    
    dp[0] = 0
    
    for i in 0..<n {
        if array[i] <= m {
            for j in array[i]...m {
                if dp[j - array[i]] != 10001 {
                    dp[j] = min(dp[j], dp[j - array[i]] + 1)
                }
            }
        }
    }
    
    if dp[m] == 10001 {
        return -1
    } else {
        return dp[m]
    }
}

