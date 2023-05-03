import Foundation



// 노드와 개수와 간선의 개수를 입력받기
func topologySort(){
    let ve = readLine()!.split(separator: " ").map { Int($0)! }
    let v = ve[0] // 노드
    let e = ve[1] // 간선
    
    var temp: [Int] = []
    
    var graph: [[Int]] = Array(repeating: [], count: v)
    
    var inputline: [Int] = Array(repeating: 0, count: v)
    
    var result:[Int] = []
    
        
    for _ in 0..<e {
        let nm = readLine()!.split(separator: " ").map { Int($0)! }
        let n = nm[0] - 1// 시작 노드 index
        let m = nm[1] - 1// 다음 노드 index
        
        inputline[m] += 1
        graph[n].append(m)
    }
    
    let emptyInputNode = inputline.filter { $0 == 0 }[0]
    
    temp.append(emptyInputNode)
    result.append(emptyInputNode)
    
    while !temp.isEmpty {
        let tempItem = temp.popLast()! // eg. 0
        let lineWithItem = graph[tempItem]
        
        lineWithItem.forEach {
            inputline[$0] -= 1
            if inputline[$0] == 0 {
                temp.append($0)
                result.append($0)
            }
        }
    }
    
    result.forEach {
        print($0 + 1)
    }
}
