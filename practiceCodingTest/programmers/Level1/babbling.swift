import Foundation

// TODO CHECK :: 다른 방식으로 풀기
func babbling(_ babbling:[String]) -> Int{
    let conditions = ["aya", "ye", "woo", "ma"]
    var available: [String] = []
    var result = 0
    
    for i in 1...conditions.count {
        available += permute(conditions, i)
    }
    
    
    func permute(_ nums: [String], _ targetNum: Int) -> [String] {
        var result: [String] = []
        var visited = [Bool](repeating: false, count: nums.count)
        func permutation(_ nowPermute: [String]) {
            if nowPermute.count == targetNum {
                result.append(nowPermute.joined(separator: ""))
                return
            }
            for i in 0..<nums.count {
                if visited[i] == true {
                    continue
                }
                else {
                    visited[i] = true
                    permutation(nowPermute + [nums[i]])
                    visited[i] = false
                }
            }
        }
        permutation([])
        return result
    }
    for word in babbling {
        if !Set(available).intersection(Set([word])).isEmpty {
            result += 1
        }
    }
    
    return result
}
