//
//  searchPart.swift
//  PracticeCodingTest
//
//  Created by 김유준 on 2023/04/07.
//

import Foundation


func searchPart(_ totalParts: [Int], _ targetParts: [Int]) -> [String]{
    // 정렬을 해줌
    let sortedTotalParts = totalParts.sorted()
    var result: [String] = []
    for targetPart in targetParts {
        
        if let _ = binarySearch(sortedTotalParts, target: targetPart) {
            result.append("yes")
        } else {
            result.append("no")
        }
        
    }
    
    return result
}

func binarySearch(_ array:[Int], target: Int) -> Int?{
    var result: Int? = nil
    var start = 0
    var end = array.count - 1
    
    while start <= end {
        let mid = (start + end)/2
        if array[mid] == target {
            result = mid
            break
        } else {
            if target < (start + end)/2 {
                end = mid - 1
            } else {
                start = mid + 1
            }
        }
    }
    
    return result
}
