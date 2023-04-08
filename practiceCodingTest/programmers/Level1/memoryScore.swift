import Foundation

func memoryScore(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int]{
    var pointDic: [String:Int] = [:]
    var result: [Int] = []
    name.enumerated().forEach { pointDic[$1] = yearning[$0] }
    
    for friendNames in photo {
        var sum = 0
        for friendName in friendNames {
            if let point = pointDic[friendName] {
                sum += point
            }
        }
        result.append(sum)
    }
    
    return result
}
