import Foundation

func lowerPoint(){
    let number = Int(readLine()!)!
    var studentList: [(name: String, point: Int)] = []
    
    for _ in 0..<number {
        let np = readLine()!.split(separator: " ")
        let n = String(np[0])
        let p = Int(np[1])!
        studentList.append((name: n, point: p))
    }
    
    studentList.sort(by: { $0.point < $1.point })
    
    print(studentList.map { $0.name }.joined(separator: " "))
}
