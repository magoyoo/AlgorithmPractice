import Foundation


//fileprivate let graph: [[Int]] = [
//    [0, 4, Int.max, 6],
//    [3, 0, 7, Int.max],
//    [5, Int.max, 0, 4],
//    [Int.max, Int.max, 2, 0]
//]

//fileprivate let numNodes: Int = 4


func floydWarshall(_ graph: [[Int]], _ numNodes: Int) -> [[Int]] {
    // 최단 경로를 저장할 2차원 배열 초기화
    var dist = graph

    // 모든 노드 쌍 간의 최단 경로 찾기
    for k in 0..<numNodes {
        for i in 0..<numNodes {
            for j in 0..<numNodes {
                if i == j || i == k || j == k {
                    continue
                }
                
                if dist[i][k] == Int.max || dist[k][j] == Int.max {
                    continue
                }
                
                if dist[i][k] + dist[k][j] < dist[i][j] {
                    dist[i][j] = dist[i][k] + dist[k][j]
                }
            }
        }
    }

    return dist
}
