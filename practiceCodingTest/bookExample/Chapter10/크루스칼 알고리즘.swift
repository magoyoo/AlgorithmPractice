import Foundation

//7 9
//1 2 29
//1 5 75
//2 3 35
//2 6 34
//3 4 7
//4 6 23
//4 7 13
//5 6 53
//6 7 25

func kruskal(){
    var result = 0
    let nl = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nl[0] // 노드 개수
    let l = nl[1] // 간선 개수
    var infos: [[Int]] = []
    
    for _ in 0..<l {
        let xyp = readLine()!.split(separator: " ").map { Int($0)! }
        let x = xyp[0]
        let y = xyp[1]
        let p = xyp[2]
        
        infos.append([x, y, p])
    }
    
    infos.sort { $0[2] < $1[2] }
    
    var disJointSet = DisJointSet(n)
    
    for info in infos {
        let xIndex = info[0] - 1
        let yIndex = info[1] - 1
        
        if disJointSet.findAndUpdate(xIndex) != disJointSet.findAndUpdate(yIndex) {
            let point = info[2]
            result += point
            disJointSet.union(xIndex, yIndex)
        }
    }
    print(result)
}


