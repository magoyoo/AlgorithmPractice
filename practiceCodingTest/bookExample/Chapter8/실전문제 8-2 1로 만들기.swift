import Foundation

func makeOne2(){
    let n = Int(readLine()!)!
    
    var dp: [Int] = Array(repeating: 0, count: n+1)
    
    for i in 1...n {
        
        dp[i] = dp[i-1] + 1
        
        if i % 3 == 0 {
            dp[i] = min(dp[i/3] + 1, dp[i])
        }
        
        if i % 2 == 0 {
            dp[i] = min(dp[i/2] + 1, dp[i])
        }
        
        if i % 5 == 0 {
            dp[i] = min(dp[i/5] + 1, dp[i])
        }
    }
    
    print(dp[n-1])
}
