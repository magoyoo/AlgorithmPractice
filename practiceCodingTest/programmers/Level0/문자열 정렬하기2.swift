import Foundation

func sortStrings2(_ my_string:String) -> String {
    return String(Array(my_string.lowercased()).sorted())
}

func sortStrings2other(_ my_string:String) -> String {
    return my_string.map{$0.lowercased()}.sorted(by: <).joined()
}

func test2solution(_ n:Int) -> [[Int]] {
    var result = Array(repeating: Array(repeating: 0, count: n), count: n)
    var xLimit = (0, n-1)
    var yLimit = (0, n-1)
    var coordinate = (0, 0)
    
    for i in 0..<n*n {
        
        result[coordinate.0][coordinate.1] = i + 1
        
        if coordinate.0 < n - 1{ // x좌표가
            
        }
        
    }
    
    return result
}
