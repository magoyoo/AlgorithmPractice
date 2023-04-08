import Foundation


func antWarrior(_ array: [Int]) -> Int{
    let n = array.count
    var d = [Int](repeating: 0, count: n)

    d[0] = array[0]
    d[1] = max(array[0], array[1])

    for i in 2..<n {
        d[i] = max(d[i - 1], d[i - 2] + array[i])
    }

    return d[n - 1]
}
