import Foundation

func separateCity(){
    let nm = readLine()!.split(separator: " ").map { Int($0)!}
    let n = nm[0] // 집의 개수
    let m = nm[1] // 길의 개수
    
    var leaderIndexList: [Int] = Array(0..<n)
    
    var pathInfo: [[Int]] = []
    var maxValue = 0
    var sumValue = 0
    
    for _ in 0..<m {
        let abc = readLine()!.split(separator: " ").map { Int($0)!}
        let aIndex = abc[0] - 1 // a집의 index
        let bIndex = abc[1] - 1 // b집의 index
        let c = abc[2] // 길 유지비용
        pathInfo.append([aIndex, bIndex, c])
    }
    
    pathInfo.sort { $0[2] < $1[2] }
    
    pathInfo.forEach {
        let aLeaderIndex = findLeaderIndex($0[0])
        let bLeaderIndex = findLeaderIndex($0[1])

        if aLeaderIndex != bLeaderIndex {
            join($0[0], $0[1])
            sumValue += $0[2]
            if maxValue < $0[2] {
                maxValue = $0[2]
            }
        }
    }
    
    func findLeaderIndex(_ nodeIndex: Int) -> Int {
        if nodeIndex != leaderIndexList[nodeIndex] {
            leaderIndexList[nodeIndex] = findLeaderIndex(leaderIndexList[nodeIndex])
        }
        
        return leaderIndexList[nodeIndex]
    }
    
    func join(_ a: Int, _ b: Int) {
        let aLeaderIndex = findLeaderIndex(a)
        let bLeaderIndex = findLeaderIndex(b)
        
        if aLeaderIndex < bLeaderIndex {
            leaderIndexList[bLeaderIndex] = aLeaderIndex
        } else {
            leaderIndexList[aLeaderIndex] = bLeaderIndex
        }
    }
    
    print(sumValue - maxValue)
}
