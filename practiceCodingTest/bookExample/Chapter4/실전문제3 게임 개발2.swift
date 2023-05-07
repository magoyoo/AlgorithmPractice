import Foundation

// 육지
// 바다
// 동(0)서(1)남(2)북(3)
// A(y), B(x)
// 시계 반대 방향으로 회전한다.
func makeGame3(){
    
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nm[0] // y좌표 개수
//    let m = nm[1] // x좌표 개수
    
    let abr = readLine()!.split(separator: " ").map { Int($0)! }
    var a = abr[0] // 현재 y좌표
    var b = abr[1] // 현재 x좌표
    var r = abr[2] // 현재 방향 0(북), 1(동), 2(남), 3(서) 0-> 3 -> 2 -> 1
    let presetMove = [(-1, 0), (0, 1), (1, 0), (0, -1)] // (y , x)
    
    var graph: [[Int]] = []
    var result = 0
    for _ in 0..<n {
        let item = readLine()!.split(separator: " ").map { Int($0)! }
        graph.append(item)
    }
    
    while true {
        rotate()
        
        let moveX = presetMove[r].1
        let moveY = presetMove[r].0
        
        // 방문한적없는 육지 = 0 방문한 육지 = 2 바다 1
        if graph[a+moveY][b+moveX] == 0 { // 앞으로 갈 수 없다면
            graph[a+moveY][b+moveX] = 2
            a = a + moveY
            b = b + moveX
            result += 1
        }
        
        var canNotGoAnyWhere = true
        presetMove.forEach {
            let moveX = $0.1
            let moveY = $0.0
            if graph[a+moveY][b+moveX] == 0 { // 갈 수 있는 곳이 있다.
                canNotGoAnyWhere = false
            }
        }
        
        if canNotGoAnyWhere {
            let moveBackPosition = getMoveBackPosition()
            if graph[a+moveBackPosition.0][b+moveBackPosition.1] == 2 { // 방문한 육지이다.
                a = a+moveBackPosition.0
                b = b+moveBackPosition.1
            } else {
                break
            }
        }
    }
    
    func rotate(){
        r = (r+3)%4
    }
    
    func getMoveBackPosition() -> (Int, Int){
        return presetMove[(r + 2)%4]
    }
    
    print(result)
}
