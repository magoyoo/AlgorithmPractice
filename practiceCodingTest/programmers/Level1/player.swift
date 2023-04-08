import Foundation

func player(_ players:[String], _ callings:[String]) -> [String] {
    var result = players
    var playerRankingDic: [String: Int] = [:]

    for (index, player) in players.enumerated() {
        playerRankingDic[player] = index
    }

    for calling in callings {
        let targetIndex = playerRankingDic[calling]!
        let upperPlayer = result[targetIndex-1]
        // map 변경
        playerRankingDic[calling]! -= 1
        playerRankingDic[upperPlayer]! += 1
        // 결과 없데이트
        result.swapAt(targetIndex, targetIndex-1)
    }
    
    return result
}
