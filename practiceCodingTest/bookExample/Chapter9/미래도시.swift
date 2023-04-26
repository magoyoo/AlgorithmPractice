import Foundation

func futureCity(){
    let firstInput = readLine()!.split(separator: " ").map { Int($0)! }
    let n = firstInput[0]
    let m = firstInput[1]
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
    
    for k in 0..<n { // 거쳐가는 곳
        for i in 0..<n {
            for j in 0..<n {
                if i == j || i == k || j == k {
                    continue
                }
                
                if graph[i][k] == Int.max || graph[k][j] == Int.max {
                    continue
                }
                
                if graph[i][j] > graph[i][k] + graph[k][j] {
                    graph[i][j] = graph[i][k] + graph[k][j]
                }
            }
        }
    }
    
    var result: Int {
        if graph[xIndex][kIndex] == Int.max || graph[0][kIndex] == Int.max {
            return -1
        } else {
            return graph[xIndex][kIndex] + graph[0][kIndex]
        }
    }
    
    print(result)
}

