import Foundation


func searchSubsequence(_ sequence: [Int], _ k: Int) -> [Int] {
    var startIndex = 1
    var endIndex = 1
    var result: [Int] = Array(repeating: 0, count: 2)
    var range: Int = -1
    
    let newSequence = [0] + sequence
    
    var prefixSum = Array(repeating: 0, count: newSequence.count)
    
    for i in 1..<newSequence.count {
        prefixSum[i] = prefixSum[i - 1] + newSequence[i]
    }
    
    while startIndex <= endIndex && endIndex < newSequence.count {
        let check = prefixSum[endIndex] - prefixSum[startIndex - 1]
        if check < k {
            endIndex += 1
        } else if check == k {
            if range < 0 || range > endIndex - startIndex {
                range = endIndex - startIndex
                result = [startIndex - 1, endIndex - 1]
            }
            endIndex += 1
        } else {
            startIndex += 1
        }
    }

    return result
}
