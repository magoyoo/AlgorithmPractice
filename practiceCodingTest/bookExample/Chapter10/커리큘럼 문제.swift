import Foundation

func curriculum(){
    let n = Int(readLine()!)!
    var indegrees = Array(repeating: 0, count: n)
    var times: [Int] = []
    var graph: [[Int]] = Array(repeating: [], count: n)
    var temp: [Int] = []
    
    for i in 0..<n {
        var inputList = readLine()!.split(separator: " ").map { Int($0)! }
        let time = inputList.remove(at: 0)
        times.append(time)
        
        inputList.forEach {
            if $0 > 0 {
                let index = $0 - 1
                indegrees[i] += 1
                graph[index].append(i)
            }
        }
    }
    
    print(graph)
    var result = times
    // 진입차수가 0인 노드 삽입
    indegrees.enumerated().filter { $0.element == 0 }.forEach{
        temp.append($0.offset)
    }
    
    while !temp.isEmpty {
        let now = temp.popLast()!
        
        graph[now].forEach { nextNodeIndex in
            result[nextNodeIndex] = max(result[nextNodeIndex], result[now] + times[nextNodeIndex])
            indegrees[nextNodeIndex] -= 1
            if indegrees[nextNodeIndex] == 0 {
                temp.append(nextNodeIndex)
                print(nextNodeIndex)
            }
        }
    }
    
    print(result)
}



//5
//10 -1
//10 1 -1
//4 1 -1
//4 3 1 -1
//3 3 -1
