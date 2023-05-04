import Foundation

func makeOne(){
    let nk = readLine()!.split(separator: " ").map { Int($0)! }
    var n = nk[0] // 값
    let k = nk[1] // 나누는 값
    
    var result = 0
    
    while n > 1 {
        if n % k == 0 {
            result += 1
            n /= k
        } else {
            n -= 1
            result += 1
        }
    }
    
    print(result)
}
