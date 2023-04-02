import Foundation

func excuteFunc(_ firstLine: String, _ callBack: (String) -> ()){
    let start = DispatchTime.now()
    
    callBack(firstLine)
    
    let end = DispatchTime.now()
    let timeElapsed = end.uptimeNanoseconds - start.uptimeNanoseconds
    print("time: \(Double(timeElapsed) * 0.000001)ms")
}


func excuteFunc(_ firstLine: String, _ secondLine: String, _ callBack: (String, String) -> ()){
    let start = DispatchTime.now()
    
    callBack(firstLine, secondLine)
    
    let end = DispatchTime.now()
    let timeElapsed = end.uptimeNanoseconds - start.uptimeNanoseconds
    print("time: \(Double(timeElapsed) * 0.000001)ms")
}

func excuteFunc(_ int2DArray: [[Int]], _ callBack: ([[Int]]) -> ()){
    let start = DispatchTime.now()
    
    callBack(int2DArray)
    
    let end = DispatchTime.now()
    let timeElapsed = end.uptimeNanoseconds - start.uptimeNanoseconds
    print("time: \(Double(timeElapsed) * 0.000001)ms")
}
