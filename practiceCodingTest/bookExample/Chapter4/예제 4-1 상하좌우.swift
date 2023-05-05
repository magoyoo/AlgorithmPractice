import Foundation


func lrud2(){
    let n = Int(readLine()!)!
    let moveArray = readLine()!.split(separator: " ")
    var currentCoordi = (0, 0)
    
    moveArray.forEach{
        switch $0 {
        case "L":
            if currentCoordi.0 > 0 {
                currentCoordi.0 -= 1
            }
        case "R":
            if currentCoordi.0 < n - 1 {
                currentCoordi.0 += 1
            }
        case "U":
            if currentCoordi.1 > 0 {
                currentCoordi.1 -= 1
            }
        default:
            if currentCoordi.1 < n - 1 {
                currentCoordi.1 += 1
            }
        }
    }
    
    print(currentCoordi.1 + 1, currentCoordi.0 + 1)
}
