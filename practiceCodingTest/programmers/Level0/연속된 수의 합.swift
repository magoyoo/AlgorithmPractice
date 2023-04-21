import Foundation

func sumOfConsecutiveNumbers(_ num: Int, _ total: Int) -> [Int]{
    let startValue = (total - num*(num-1)/2)/num
    return (startValue..<startValue+num).map { $0 }
}


