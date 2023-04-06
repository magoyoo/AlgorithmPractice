import Foundation


func dfs(_ graph: [[Int]], _ startNode: Int, _ visited: inout [Bool]){
    visited[startNode] = true
    print(startNode, terminator: " ")
    
    // [2, 3, 8]
    // [1, 7]
    for nextNode in graph[startNode] {
        if !visited[nextNode] {
            dfs(graph, nextNode, &visited)
        }
    }
}

//func bfs(_ graph: [[Int]], _ startNode: Int, _ visited: inout [Bool]){
//    var queue = [Int]()
//    queue.append(startNode)
//
//    while !queue.isEmpty {
//        let node = queue.removeFirst()
//        print(visited)
//        if !visited[node] {
//            print(node, terminator: " ")
//            visited[node] = true
//            for neighbor in graph[node] {
//                queue.append(neighbor)
//            }
//        }
//    }
//}


func bfs(_ graph: [[Int]], _ startNode: Int, _ visited: inout [Bool]){
    var q = [Int]()
    q.append(startNode)
    
    while !q.isEmpty {
        let node = q.removeFirst()
        print(node, terminator: " ")
        for neighbor in graph[node] {
            if !visited[neighbor]{
                q.append(neighbor)
            }
        }
    }
}
