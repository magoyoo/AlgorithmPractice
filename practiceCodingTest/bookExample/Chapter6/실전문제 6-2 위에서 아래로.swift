import Foundation

func upAndDown(){
    let n = Int(readLine()!)!
    var list: [Int] = []
    for _ in 0..<n {
        let listItem = Int(readLine()!)!
        list.append(listItem)
    }
    
    list.sort(by: >)
    print(list.map { String($0)}.joined(separator: " "))

}
