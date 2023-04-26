import Foundation

struct TelegramDistance: Comparable {
    static func < (lhs: TelegramDistance, rhs: TelegramDistance) -> Bool {
        lhs.distance < rhs.distance
    }
    
    let node: Int
    let distance: Int
    
    init(_ item: (Int, Int)){
        node = item.0
        distance = item.1
    }
}


func telegram(){
    let nmc = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nmc[0] // 노드 개수
    let m = nmc[1] // 간선 개수
    
    let cIndex = nmc[2] - 1
    var graph: [[(Int, Int)]] = Array(repeating: [], count: n)
    var distance: [Int] = Array(repeating: Int.max, count: n)
    // heap
    var minHeap = MinHeap<TelegramDistance>()
    
    for _ in 0..<m {
        let mInfo = readLine()!.split(separator: " ").map { Int($0)!}
        let fromCityIndex = mInfo[0] - 1
        let toCityIndex = mInfo[1] - 1
        let distance = mInfo[2]
    
        graph[fromCityIndex].append((toCityIndex, distance))
    }
    
    // c->c 거리 업데이트
    distance[cIndex] = 0
    // 초기값 minHeap에 업데이트
    minHeap.insert(TelegramDistance((cIndex, 0)))

    while !minHeap.isEmpty {
        let target = minHeap.pop()!
        let targetNode = graph[target.node]
        
        for i in 0..<targetNode.count {
            let targetInstance = TelegramDistance(targetNode[i])
            if targetInstance.distance < distance[targetInstance.node] {
                distance[targetInstance.node] = targetInstance.distance
                minHeap.insert(TelegramDistance(targetNode[i]))
            }
        }
    }
    
    let availableCity = distance.filter { $0 != Int.max && $0 != 0 }
    let totalDistance = availableCity.max()!
    let totalCityCount = availableCity.count
    
    print(totalCityCount, totalDistance)
}
