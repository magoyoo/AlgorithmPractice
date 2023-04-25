import Foundation


fileprivate let graph: [[Int]] = [
    [0, 4, Int.max, 6],
    [3, 0, 7, Int.max],
    [5, Int.max, 0, 4],
    [Int.max, Int.max, 2, 0]
]

fileprivate let numNodes: Int = 4

print(floydWarshall(graph, numNodes))
