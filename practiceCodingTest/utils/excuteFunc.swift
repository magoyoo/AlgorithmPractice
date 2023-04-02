import Foundation

func excuteFunc(_ firstLine: String, _ excuteFunc: (String) -> ()){
    let start = DispatchTime.now()
    
    excuteFunc(firstLine)
    
    let end = DispatchTime.now()
    let timeElapsed = end.uptimeNanoseconds - start.uptimeNanoseconds
    print("time: \(Double(timeElapsed) * 0.000001)ms")
}


func excuteFunc(_ firstLine: String, _ secondLine: String, _ excuteFunc: (String, String) -> ()){
    let start = DispatchTime.now()
    
    excuteFunc(firstLine, secondLine)
    
    let end = DispatchTime.now()
    let timeElapsed = end.uptimeNanoseconds - start.uptimeNanoseconds
    print("time: \(Double(timeElapsed) * 0.000001)ms")
}

