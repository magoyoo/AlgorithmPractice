import Foundation

let INF = Int(1e9)
var graph = [[(Int, Int)]]() // 주어진 그래프
var visited = [Bool]() // 방문 여부
var distance = [Int]() // 최소값 모음

// 방문하지 않은 노드 중에서, 가장 최단 거리가 짧은 노드의 번호를 반환
func getSmallestNode() -> Int {
    var minValue = INF
    var index = 0
    for i in 1...graph.count-1 {
        if distance[i] < minValue && !visited[i] {
            minValue = distance[i]
            index = i
        }
    }
    return index
}

func dijkstra(_ start: Int) {
    distance[start] = 0
    visited[start] = true
    
    for j in graph[start] {
        distance[j.0] = j.1
    }
    
    for _ in 0...graph.count-2 {
        let now = getSmallestNode()
        visited[now] = true
        
        for j in graph[now] {
            let cost = distance[now] + j.1
            if cost < distance[j.0] {
                distance[j.0] = cost
            }
        }
    }
}

func basicDijkstra() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0] // 노드의 개수
    let m = input[1] // 간선의 개수
    let start = Int(readLine()!)! // 시작 노드
    
    graph = Array(repeating: [(Int, Int)](), count: n+1)
    visited = Array(repeating: false, count: n+1)
    distance = Array(repeating: INF, count: n+1)
    
    for _ in 0..<m {
        let edge = readLine()!.split(separator: " ").map { Int($0)! }
        graph[edge[0]].append((edge[1], edge[2]))
    }
    
    dijkstra(start)
    
    print(distance)
    for i in 1...n {
        if distance[i] == INF {
            print("INFINITY")
        } else {
            print(distance[i])
        }
    }
}


