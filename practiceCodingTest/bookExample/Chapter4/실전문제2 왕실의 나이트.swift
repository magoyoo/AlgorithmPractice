import Foundation

func loyalNight2(){
    let input = readLine()!
    
    let xConstant = Array("abcdefgh")
    let yConstant = Array("12345678")
    
    var result = 0
    
    let xIndex = xConstant.firstIndex(where: { $0 == Array(input)[0] })!
    let yIndex = yConstant.firstIndex(where: { $0 == Array(input)[1] })!
    
    let move = [(1, 2), (1, -2), (-1, 2), (-1, -2), (2, 1), (2, -1), (-2, -1), (-2, 1)]
    
    
    move.forEach {
        if xIndex + $0.0 >= 0 && xIndex + $0.0 < 8
            && yIndex + $0.1 >= 0 && yIndex + $0.1 < 8 {
            result += 1
        }
    }
    print(result)
}
