import Foundation

func untilOne(_ input: String){
    let data = input
        .split(separator: " ")
        .compactMap{ Int($0) }
    
    var n = data[0]
    let k = data[1]
    var result = 0
    
    while n > 1 {
        if n % k == 0 {
            n /= k
        } else {
            n -= 1
        }
        result += 1
    }
    print(result)
}
