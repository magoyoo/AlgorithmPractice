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

//let firstLine = readLine()!
//let secondLine = readLine()!
//var table: [[Int]] = []
//let firstLineX = Int(firstLine.split(separator: " ")[0])!
//
//

// MARK: - Chapter5 구현

// 이론
//for _ in 0..<firstLineX {
//    let input = readLine()!
//        .split(separator: " ")
//        .compactMap { Int($0) }
//
//    table.append(input)
//}
//
//excuteFunc(firstLine, secondLine, table, developmentGame)

//
//let data = factorialTest(1)
//print(data)



// var visited = [1, 2, 7, 6, 8, 3, 4, 5]
// var visited = [1, 2, 3, 8, 7, 4, 5, 6]

//let graph = [
//    [],
//    [2, 3, 8],
//    [1, 7],
//    [1, 4, 5],
//    [3, 5],
//    [3, 4],
//    [7],
//    [2, 6, 8],
//    [1, 7]
//]
//
//var visited = [Bool](repeating: false, count: graph.count)
//
//bfs(graph, 1, &visited)

// 음료수 얼려 먹기
//countIceCreams2()

// 미로 탈출
//shortestDistance()

// 5 6
//101010
//111111
//000001
//111111
//111111
//let scores = [[5,7],[11,7],[10, 6], [9, 7]]
//let data = performanceAppraisalSolution(scores)
//print(data)

// 이진 탐색
//testBinarySearch()


// MARK: - Chapter7

//let totalPart = [8, 3, 7, 9, 2]
//let targetPart = [5, 7, 9]
//
//print(searchPart(totalPart, targetPart))
//[1, 2, 3, 4, 5]    7    [2, 3]
//[1, 1, 1, 2, 3, 4, 5]    5    [6, 6]
//[2, 2, 2, 2, 2]    6    [0, 2]

//let result = searchSubsequence([1, 1, 1, 2, 3, 4, 5], 5)
//
//print(result)

//makeOne(26)

//
//let result = antWarrior([2, 7, 9, 3, 1])
//
//print(result)


//let result = floorConstruction(3)
//
//print(result)

let result = player(["mumu", "soe", "poe", "kai", "mine"], ["kai", "kai", "mine", "mine"])


print(result)
