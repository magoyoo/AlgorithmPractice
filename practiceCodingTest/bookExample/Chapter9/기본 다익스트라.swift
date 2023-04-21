//
//  기본 다익스트라.swift
//  PracticeCodingTest
//
//  Created by 김유준 on 2023/04/21.
//

import Foundation

//fileprivate let graph: [[(Int, Int)]] = [
//    [],
//    [(2, 2), (4, 1)], // 1
//    [(3, 3), (4, 2)], // 2
//    [(2, 3), (6, 5)], // 3
//    [(3, 3), (5, 1)], // 4
//    [(3, 1), (6, 2)], // 5
//    [] // 6
//]
//
//fileprivate let startNode: Int = 1


func basicDijkstra2(_ graph: [[(Int, Int)]], _ startNode: Int) -> [Int]{
    // 필요한 프로퍼티 추가
    var visited = Array(repeating: false, count: graph.count)
    var distance = Array(repeating: Int.max, count: graph.count )
    
    // 첫 번째 노드 설정
    visited[0] = true
    distance[startNode] = 0
    
    func searchNextInspectNode() -> Int{
        var result = 0
        var minValue = Int.max
        visited.enumerated().forEach { index, item in
            if item == false && distance[index] < minValue {
                result = index
                minValue = distance[index]
            }
        }
        return result
    }
    
    while !visited.filter({ $0 == false }).isEmpty {
        let i = searchNextInspectNode()
        visited[i] = true
        let currentNodeMin = distance[i]

        for j in graph[i] {
            let nextNode = j.0
            // 다음 노드 정보를 업데이트 해줄것인가?
            let currentNextNodeMinValue = distance[nextNode]
            let newValue = j.1 + currentNodeMin

            if currentNextNodeMinValue > newValue {
                distance[nextNode] = newValue
            }
        }
    }
    
    return distance
}
