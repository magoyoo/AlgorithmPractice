import Foundation

func makeDduck(){
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let _ = nm[0] // 떡의 개수
    let m = nm[1] // 손님이 원하는 떡
    let itemList = readLine()!.split(separator: " ").map { Int($0)! }
    
    var startValue = 0
    var endValue = itemList.max()!
    var midValue = itemList.max()!
    var result = 0
    
    while startValue <= endValue {
        midValue = (endValue + startValue)/2
        
        let value = itemList.reduce(0){
            if $1 - midValue > 0 {
                return $0 + $1 - midValue
            }
            return $0
        }
        if value == m {
            result = midValue
            break
        } else if value > m {
            result = midValue
            startValue = midValue + 1
        } else {
            endValue = midValue - 1
        }
    }
    
    print(result)
}
