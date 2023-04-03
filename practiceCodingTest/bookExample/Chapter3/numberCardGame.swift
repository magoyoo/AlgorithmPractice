import Foundation


//time: 0.554541ms
func numberCardGame(_ int2DArray: [[Int]]){
    var result = 0
    
    for var tableLine in int2DArray {
        tableLine.sort(by: <)
        if result < tableLine[0] {
            result = tableLine[0]
        }
    }
    
    print(result)
    
}

//time: 0.365625ms
func numberCardGameByMinMax(_ int2DArray: [[Int]]){
    var resultArray: [Int] = []
    
    for tableLine in int2DArray {
        resultArray.append(tableLine.min()!)
    }
    
    print(resultArray.max()!)
}
