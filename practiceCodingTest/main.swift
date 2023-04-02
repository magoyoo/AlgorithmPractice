import Foundation

// MARK: - Gird

// 1. 거스름돈
//let firstLine = readLine()!
//excuteFunc(
//    firstLine,
//    totalMarginCoin
//)

// 2. 큰 수의 법칙
//let firstLine = readLine()!
//let secondLine = readLine()!
//
//excuteFunc(
//    firstLine,
//    secondLine,
//    girdBigNum
//)

// 3. 숫자 카드 게임
//var table: [[Int]] = []
//
//let firstLine = readLine()!
//    .split(separator: " ")
//    .compactMap{ Int($0) }
//
//for _ in 0..<firstLine[0] {
//    let input = readLine()!
//        .split(separator: " ")
//        .compactMap { Int($0) }
//
//    table.append(input)
//}
//
//excuteFunc(
//    table,
//    numberCardGame
//)
//
//excuteFunc(
//    table,
//    numberCardGameByMinMax
//)

// 4. 1이 될 때까지

let firstLine = readLine()!
 

excuteFunc(
    firstLine,
    untilOne
)
