import Foundation

func numberCardGame2(){
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nm[0]
    
    var graph: [[Int]] = []
    var result = 0
    for _ in 0..<n {
        let row = readLine()!.split(separator: " ").map { Int($0)! }
        graph.append(row)
    }
    
    for i in graph {
        if result < i.min()! {
            result = i.min()!
        }
    }
    
    print(result)
}
