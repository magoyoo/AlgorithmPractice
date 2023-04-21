import Foundation


fileprivate struct DijkstraGraph: Comparable {
    static func < (lhs: DijkstraGraph, rhs: DijkstraGraph) -> Bool {
        lhs.distance < rhs.distance
    }
    var node: Int
    var distance: Int
    
    init(_ item: (Int, Int)){
        self.node = item.0
        self.distance = item.1
    }
}


func improvedDijkstra(_ graph: [[(Int, Int)]], _ startNode: Int) -> [Int]{
    let dijkstraGraph = graph.map { $0.map{ DijkstraGraph.init($0) } }
    var distance = Array(repeating: Int.max, count: graph.count)
    var minHeap = MinHeap<DijkstraGraph>()
    
    distance[startNode] = 0
    minHeap.insert(DijkstraGraph.init((1, 0)))
    
    while !minHeap.isEmpty {
        let currentNodeInfo = minHeap.pop()!

        for nextNodeInfo in dijkstraGraph[currentNodeInfo.node] {
            let currentNextNodeMinValue = distance[nextNodeInfo.node]
            let newValue = nextNodeInfo.distance + currentNodeInfo.distance

            if currentNextNodeMinValue > newValue {
                distance[nextNodeInfo.node] = newValue
                minHeap.insert(DijkstraGraph.init((nextNodeInfo.node, newValue)))
            }
        }
    }
    
    return distance
}
