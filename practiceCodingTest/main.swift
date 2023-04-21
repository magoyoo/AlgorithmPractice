import Foundation


fileprivate let graph: [[(Int, Int)]] = [
    [], // 0
    [(2, 2), (4, 1), (5, 3)], // 1
    [(3, 3), (4, 2)], // 2
    [(2, 3), (6, 5)], // 3
    [(3, 3), (5, 1)], // 4
    [(3, 1), (6, 2)], // 5
    [] // 6
]

fileprivate let startNode: Int = 1

print(improvedDijkstra(graph, startNode))


//[9223372036854775807, 0, 2, 3, 1, 2, 4]
