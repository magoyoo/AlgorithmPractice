import Foundation

func floorConstruction(){
    let n = Int(readLine()!)!
    
    var dp = Array(repeating: 0, count: n)
    // 2X2를 채우는 방법 => a(1)
    
    dp[0] = 1
    dp[1] = 3
    
    for i in 2..<n {
        dp[i] = dp[i-2] * 2 + dp[i-1]
    }
    
    print(dp[n-1])
}
