import Foundation

func marginSolution(){
    let n = Int(readLine()!)!
    let marginUnits = [500, 100, 50, 10]
    
    var margin = n
    // 최소 갯수
    var result = 0
    
    marginUnits.forEach {
        result += margin / $0
        margin = margin % $0
    }
    
    print(result)
}
