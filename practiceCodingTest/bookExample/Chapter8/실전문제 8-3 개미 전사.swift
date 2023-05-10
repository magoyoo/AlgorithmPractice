import Foundation

func antWarrior2(){
    let n = Int(readLine()!)!
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    
    var dp = Array(repeating: 0, count: n)
    
    for i in 0..<n {
        
        if i == 0 {
            dp[0] = list[0]
            continue
        }
        
        if i == 1 { // 아이템이 두개
            dp[i] = max(list[0], list[1])
            continue
        }
        
        dp[i] = max(dp[i-1], dp[i-2] + list[i]) 
    }
    print(dp)
    print(dp[n-1])
}
