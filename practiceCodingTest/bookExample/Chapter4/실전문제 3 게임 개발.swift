import Foundation

func makeGame(){
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let yxr = readLine()!.split(separator: " ").map { Int($0)! }
    var graph: [[Int]] = []
    var result = 1
    
    var y = yxr[0] // 케릭터의 y 좌표
    var x = yxr[1] // 케릭터의 y 좌표
    var r = yxr[2] // 케릭터의 현재 회전 방향
    
    let ny = nm[0] // 세로  y
    
    for _ in 0..<ny {
        let graphItem = readLine()!.split(separator: " ").map { Int($0)! }
        graph.append(graphItem)
    }
    
    graph[y][x] = 1
    
    while isMovable(x: x, y: y, graph: graph) {
        var tempX = x
        var tempY = y
        // 왼쪽 방향으로 회전한다
        r = (r+3)%4
        // 갈 수 있는지 check
        switch r {
        case 0: tempY -= 1
        case 1: tempX += 1
        case 2: tempY += 1
        default: tempX -= 1
        }
        
        if graph[tempY][tempX] == 0 {
            graph[tempY][tempX] = 1
            y = tempY
            x = tempX
            result += 1
        }
    }
    print(result)
}

// 네 방향이 다 막혀있는 경우
func isMovable(x: Int, y: Int, graph: [[Int]]) -> Bool {
    if graph[y-1][x] == 0 {
        return true
    }
    
    if graph[y][x+1] == 0 {
        return true
    }

    if graph[y+1][x] == 0 {
        return true
    }
    
    if graph[y][x-1] == 0 {
        return true
    }
    
    return false
}


