import Foundation

func makeTeams(){
    let mn = readLine()!.split(separator: " ").map { Int($0)! }
    let m = mn[0] // 팀의 개수
    let n = mn[1] // 연산의 개수
    var teamLeaderIndex: [Int] = Array(0..<m)
    var result: [String] = []
    
    for _ in 0..<n {
        let fab = readLine()!.split(separator: " ").map { Int($0)! }
        let f = fab[0]
        let a = fab[1] - 1
        let b = fab[2] - 1
        
        switch f {
        case 0:
            insertSet(a, b)
        default:
            let aLeadIndex = find(a)
            let bLeadIndex = find(b)
            if aLeadIndex == bLeadIndex {
                result.append("YES")
            } else {
                result.append("NO")
            }
        }
    }
    
    result.forEach{ print($0) }
    
    func insertSet(_ a: Int, _ b: Int){
        let aLeadIndex = find(a)
        let bLeadIndex = find(b)
        
        if bLeadIndex < aLeadIndex {
           teamLeaderIndex[aLeadIndex] = bLeadIndex
        } else {
            teamLeaderIndex[bLeadIndex] = aLeadIndex
        }
    }
    
    func find(_ x: Int) -> Int{
        if teamLeaderIndex[x] != x {
            teamLeaderIndex[x] = find(teamLeaderIndex[x])
        }
        return x
    }
}
