import Foundation


func swapElement(){
    let nk = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nk[0] // 리스트 원소 개수
    let k = nk[1] // 바꾸는 회수
    
    var firstList = readLine()!.split(separator: " ").map { Int($0)! }
    var secondList = readLine()!.split(separator: " ").map { Int($0)! }
    
    firstList.sort(by: <)
    secondList.sort(by: >)
    
    let secondSum = secondList[0..<k].reduce(0, +)
    let result = firstList[k..<n].reduce(secondSum, +)
    
    print(result)
}


