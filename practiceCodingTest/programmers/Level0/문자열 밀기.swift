import Foundation

// https://school.programmers.co.kr/learn/courses/30/lessons/120921

func pushChar(_ A: String, _ B: String) -> Int{
    let AA = (A+A)
    let ArrayAA = Array(AA)
    let ArrayB = Array(B)
    
    if !AA.contains(B) {
        return -1
    }
    
    for i in 0..<A.count {
        let start = A.count - i
        let end = start + A.count
        if Array(ArrayAA[start..<end]) == ArrayB {
            return i
        }
    }
    return -1
}


func pushChar2(_ A:String, _ B:String) -> Int {
    let arr = (A+A).components(separatedBy: B)
    return arr.count == 1 ? -1 : arr[1].count
}
