import Foundation

func searchSubsequence(_ sequence: [Int], _ k: Int) -> [Int] {
    var startIndex = 1
    var endIndex = 1
    var result: [Int] = Array(repeating: 0, count: 2)
    var range: Int = -1
    let temp = [0] + sequence
    
    var sumSequence = Array(repeating: 0, count: temp.count)
    
    for i in 1..<temp.count {
        sumSequence[i] = sumSequence[i - 1] + temp[i]
    }
    
    while startIndex <= endIndex && endIndex < temp.count {
        
        let sum = sumSequence[endIndex] - sumSequence[startIndex - 1]
        if sum < k {
            // 간격을 늘린다.
            endIndex += 1
        } else if sum == k {
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
    
//    while range > 0 {
//        let endIndex = startIndex + (range - 1)
//        if (startIndex > endIndex ) || (endIndex > (sequence.count - 1)) {
//            break
//        }
//
//        let sum = sumSequence[endIndex + 1] - sumSequence[endIndex + 1 - range]
//
//        if sum < k {
//            startIndex += 1
//        } else if sum > k {
//            range -= 1
//        } else {
//            result[0] = startIndex
//            result[1] = startIndex + (range - 1)
//            range -= 1
//        }
//    }
//
//    return result
//}

//func searchSubsequence2(_ sequence: [Int], _ k: Int) -> [Int] {
//    var startIndex = 1
//    var endIndex = 1
//    var result: [Int] = Array(repeating: 0, count: 2)
//    var range: Int = -1
//    let temp = [0] + sequence
//
//    var prefixSum = Array(repeating: 0, count: temp.count)
//
//    for i in 1..<temp.count {
//        prefixSum[i] = prefixSum[i - 1] + temp[i]
//    }
//
//    while startIndex <= endIndex && endIndex < temp.count {
//
//        let sum = prefixSum[endIndex] - prefixSum[startIndex - 1]
//        if sum < k {
//            // 간격을 늘린다.
//            endIndex += 1
//        } else if sum == k {
//            if range < 0 || range > endIndex - startIndex {
//                range = endIndex - startIndex
//                result = [startIndex - 1, endIndex - 1]
//            }
//            endIndex += 1
//        } else {
//            startIndex += 1
//        }
//    }
//
//    return result
//}
