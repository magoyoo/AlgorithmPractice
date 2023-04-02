import Foundation


/// "이것이 코딩테스트다" 3-2 큰 수의 법칙
/// - Parameters:
///   - first: n, m, k
///   - second: 숫자 배열
func girdBigNum(first: String, second: String){
    let firstLine = first
        .split(separator: " ")
        .compactMap{ Int($0)}
    let secondLine = second
        .split(separator: " ")
        .compactMap { Int($0) }
        .sorted(by: >)
    
    let m = firstLine[1]
    let k = firstLine[2]

    let bigger = secondLine[0]
    let smaller = secondLine[1]

    let smallerCount = m/(k + 1)
    let biggerCount = m - smallerCount

    let result = bigger * biggerCount + smaller * smallerCount

    print(result)
}
