import Foundation

func searchLrud(_ firstLine: String, _ secondLine: String){
    var coordinate: [Int] = [1, 1]
    let n = Int(firstLine)!
    let moveArray = secondLine
                        .split(separator: " ")
                        .compactMap{ String($0) }
    
    
    for move in moveArray{
        switch move {
        case "R":
            if coordinate[0] < n {
                coordinate[0] += 1
            }
        case "L":
            if coordinate[0] > 1 {
                coordinate[0] -= 1
            }
        case "U":
            if coordinate[1] > 1 {
                coordinate[1] -= 1
            }
        case "D":
            if coordinate[1] < n {
                coordinate[1] += 1
            }
        default: return
        }
    }
    
    print("\(coordinate[1]) \(coordinate[0])")
}
