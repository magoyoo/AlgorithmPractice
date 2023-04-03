import Foundation

// MARK: -  Chapter4 Greedy

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

//let firstLine = readLine()!
//
//
//excuteFunc(
//    firstLine,
//    untilOne
//)

// MARK: - Chapter4 구현

// 4-1
//let firstLine = readLine()!
//let secondLine = readLine()!
//
//
//excuteFunc(firstLine, secondLine, searchLrud)


//let firstLine = readLine()!
//
//excuteFunc(firstLine, find3)

// 4-2

//let firstLine = readLine()!
//
//excuteFunc(firstLine, loyalNight2)

// 4-3

let firstLine = readLine()!
let secondLine = readLine()!
var table: [[Int]] = []
let firstLineX = Int(firstLine.split(separator: " ")[0])!


for _ in 0..<firstLineX {
    let input = readLine()!
        .split(separator: " ")
        .compactMap { Int($0) }

    table.append(input)
}

excuteFunc(firstLine, secondLine, table, developmentGame)



