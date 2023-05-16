import Foundation

func futurecity(){
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nm[0] // node 개수
    let m = nm[1] // 간선 개수
    let Aindex = 0 // A회사 index
    
    var graph: [[Int]] = Array(repeating: Array(repeating: Int.max, count: n), count: n)
    
    for _ in 0..<m {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let startNode = input[0] - 1
        let endNode = input[1] - 1
        graph[startNode][endNode] = 1
        graph[endNode][startNode] = 1
    }
    
    let xk = readLine()!.split(separator: " ").map { Int($0)! }
    let xIndex = xk[0] - 1
    let kIndex = xk[1] - 1
    
    for i in 0..<n {
        for j in 0..<n { // 거쳐가는 곳
            for k in 0..<n {
                if i == j || i == k || j == k {
                    continue
                }
                
                if graph[i][j] == Int.max || graph[j][k] == Int.max {
                    continue
                }
                
                if graph[i][k] > graph[i][j] + graph[j][k] {
                    graph[i][k] = graph[i][j] + graph[j][k]
                }
            }
        }
    }
    
    let minK = graph[Aindex][kIndex]
    let minX = graph[kIndex][xIndex]
    
    if minK == Int.max || minX == Int.max {
        print(-1)
    } else {
        print(minX + minK)
    }
}

