import Foundation


func unionExample(){
    let ne = readLine()!.split(separator: " ").map { Int($0)! }

    let n = ne[0] // 노드의 개수
    let e = ne[1] // 간선의 개수
    
    let disjointSet = DisJointSet(n)
    
    for _ in 0..<e {
        let xy = readLine()!.split(separator: " ").map { Int($0)! }
        disjointSet.union(xy[0]-1, xy[1]-1)
    }
    
    
    print(disjointSet.getTotalParent())
}


