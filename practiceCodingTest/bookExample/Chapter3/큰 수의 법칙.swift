import Foundation

func bigNumber2(){
    let nmk = readLine()!.split(separator: " ").map { Int($0)! }
    var inputArray = readLine()!.split(separator: " ").map { Int($0)! }
    
    let m = nmk[1] // 숫자가 더해지는 횟수
    let k = nmk[2] // 연속해서 올 수 있는 수
    
    inputArray.sort(by: >)
    
    let bigger = inputArray[0]
    let smaller = inputArray[1]
    
    let count = m / (k+1)
    let margin = m % (k+1)
    
    print((bigger*k + smaller) * count + margin * bigger)
}
