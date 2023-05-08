import Foundation


func iceBeverage2(){
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nm[0] // y 개수
    let m = nm[1] // x 개수
    var graph: [[Int]] = []
    var result = 0
    let movable = [
        (y: 0, x: 1),
        (y: 0, x: -1),
        (y: 1, x: 0),
        (y: -1, x: 0)
    ] // (y, x)
    
    for _ in 0..<n {
        let graphItem = Array(readLine()!).map { Int(String($0))! }
        graph.append(graphItem)
    }
    
    func search(x: Int, y: Int){
        if x >= 0, y >= 0, x < m, y < n, graph[y][x] == 0 {
            graph[y][x] = 1
            movable.forEach{
                let moveX = $0.x
                let moveY = $0.y
                search(x: x+moveX, y: y+moveY)
            }
        }
    }
    
    // 0인 경우 가능, 1인 경우 불가능
    for xIndex in 0..<m {
        for yIndex in 0..<n {
            if graph[yIndex][xIndex] == 0 {
                result += 1
                search(x: xIndex, y: yIndex)
            }
        }
    }
    
    print(result)
}
