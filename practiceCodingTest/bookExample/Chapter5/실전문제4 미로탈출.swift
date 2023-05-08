import Foundation

func exitMirror(){
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nm[0] // y
    let m = nm[1] // x
    var graph: [[Int]] = []
    var visited: [(Int, Int)] = [] // (x, y)
    let presetMove = [(0, 1), (0, -1), (1, 0), (-1, 0)] // (x, y)
    
    for _ in 0..<n {
        let graphItem = Array(readLine()!).map { Int(String($0))! }
        graph.append(graphItem)
    }
    
    visited.append((0, 0))
    
    while !visited.isEmpty {
        let target = visited.removeFirst()
        let targetX = target.0
        let targetY = target.1
        
        presetMove.forEach {
            let moveX = $0.0
            let moveY = $0.1
            let nextX = targetX + moveX
            let nextY = targetY + moveY
            if nextX >= 0, nextX < m, nextY >= 0, nextY < n, graph[nextY][nextX] == 1 {
                graph[nextY][nextX] = graph[targetY][targetX] + 1
                visited.append((nextX, nextY))
            }
        }
    }
    
    print(graph)
}

//101010
//111111
//000001
//111111
//111111
