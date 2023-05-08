import Foundation

func exitMirror2(){
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nm[0] // y 개수
    let m = nm[1] // x 개수
    var graph: [[Int]] = []
    var queue: [(y: Int, x: Int)] = []
    let movable = [
        (y: 0, x: 1),
        (y: 0, x: -1),
        (y: 1, x: 0),
        (y: -1, x: 0),
    ]
    
    for _ in 0..<n {
        let graphItem = Array(readLine()!).map { Int(String($0))! }
        graph.append(graphItem)
    }
    
    queue.append((y: 0, x: 0))
    
    while !queue.isEmpty {
        let target = queue.popLast()!
        
        movable.forEach { move in
            let moveTargetX = target.x + move.x
            let moveTargetY = target.y + move.y
            
            if moveTargetX >= 0,
               moveTargetY >= 0,
               moveTargetX < m,
               moveTargetY < n,
               graph[moveTargetY][moveTargetX] == 1
            {
                queue.append((y: moveTargetY, x: moveTargetX))
                graph[moveTargetY][moveTargetX] = graph[target.y][target.x] + 1
            }
        }
    }
    
    print(graph[n-1][m-1])
}
