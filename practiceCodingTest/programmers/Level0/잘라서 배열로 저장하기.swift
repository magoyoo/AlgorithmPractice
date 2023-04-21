//
//  잘라서 배열로 저장하기.swift
//  PracticeCodingTest
//
//  Created by 김유준 on 2023/04/11.
//

import Foundation

func cutAndStoreAsArray(_ my_str:String, _ n:Int) -> [String] {
    
    var result: [String] = []
    var stringArray = Array(my_str)
    var splitIndex = 0
    
    while splitIndex != my_str.count {
        let startIndex = splitIndex
        let endIndex = min(splitIndex + n, my_str.count)
        result.append(String(stringArray[splitIndex..<endIndex]))
        splitIndex = endIndex
    }
    
    return result
}
