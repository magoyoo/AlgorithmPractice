import Foundation

func countIceCreams2(){
    let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
    let n = nm[0]
    let m = nm[1]
    
    var graph = [[Int]]()
    
    for _ in 0..<n {
        let row = readLine()!.map { Int(String($0))! }
        graph.append(row)
    }
    
    func dfs(_ x: Int, _ y: Int){
        if x < 0 || y < 0 || x >= n || y >= m {
            return
        }
        if graph[x][y] == 0 {
            graph[x][y] = 1
            dfs(x+1, y)
            dfs(x-1, y)
            dfs(x, y+1)
            dfs(x, y-1)
        }
    }
    
    var count = 0
    
    for i in 0..<n {
        for j in 0..<m {
            if graph[i][j] == 0 {
                dfs(i, j)
                count += 1
            }
        }
    }
    print(count)
}



















func countIceCreams() {
    let nm = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = nm[0]
    let m = nm[1]

    var graph = [[Int]]()

    for _ in 0..<n {
        let row = readLine()!.map{ Int(String($0))! }
        graph.append(row)
    }

    func dfs(_ x: Int, _ y: Int) {
        // 주어진 범위를 벗어나는 경우에는 즉시 종료
        if x <= -1 || x >= n || y <= -1 || y >= m {
            return
        }

        // 현재 노드를 방문하지 않았다면
        if graph[x][y] == 0 {
            // 해당 노드 방문 처리
            graph[x][y] = 1
            // 상, 하, 좌, 우의 위치들도 모두 재귀적으로 호출
            dfs(x-1, y)
            dfs(x, y-1)
            dfs(x+1, y)
            dfs(x, y+1)
        }
    }

    var count = 0
    for i in 0..<n {
        for j in 0..<m {
            // 현재 위치에서 DFS 수행
            if graph[i][j] == 0 {
                dfs(i, j)
                count += 1
            }
        }
    }

    print(count)
}
