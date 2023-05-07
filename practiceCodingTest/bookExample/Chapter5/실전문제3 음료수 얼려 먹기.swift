import Foundation


func iceBeverage(){
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nm[0] // y축 개수
    let m = nm[1] // x축 개수
    
    var graph: [[Int]] = []
    var visitedMap: [[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)
    var result = 0
    
    for _ in 0..<n {
        let graphItem = readLine()!
        let arrayItem = Array(graphItem)
        graph.append(arrayItem.map { Int(String($0))! })
    }
    
    func visit(_ x: Int, _ y: Int){
        if x < 0 || y < 0 || x >= m || y >= n {
            return
        }
        if !visitedMap[y][x], graph[y][x] == 0 {
            visitedMap[y][x] = true
            visit(x+1, y)
            visit(x-1, y)
            visit(x, y+1)
            visit(x, y-1)
        }
    }
    
    for y in 0..<n {
        for x in 0..<m{
            if graph[y][x] == 0, !visitedMap[y][x] {
                visit(x, y)
                result += 1
            }
        }
    }
    
    print(result)
}

//00000111100000
//11111101111110
//11011101101110
//11011101100000
//11011111111111
//11011111111100
//11000000011111
//01111111111111
//00000000011111
//01111111111000
//00011111111000
//00000001111000
//11111111110011
//11100011111111
//11100011111111
