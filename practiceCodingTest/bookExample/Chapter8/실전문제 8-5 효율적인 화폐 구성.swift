import Foundation

func efficientMoney2(){
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nm[0] // 화폐의 가치 개수
    let money = nm[1] // 만들고자 하는 금액
    var units = [Int]()
    
    var dp = Array(repeating: 10001, count: money)
    
    dp[0] = 0
    
    for _ in 0..<n {
        let unit = Int(readLine()!)!
        units.append(unit)
    }
    

    for unitIndex in 0..<n {
        let targetUnit = units[unitIndex]
        if targetUnit <= money {
            for targetMoney in targetUnit..<money {
                if dp[targetMoney - targetUnit] != 10001 {
                    dp[targetMoney] = min(dp[targetMoney], dp[targetMoney - targetUnit] + 1)
                }
            }
        }
    }
    
    if dp[money-1] == 10001 {
        print(-1)
    } else {
        print(dp[money-1])
    }
}
