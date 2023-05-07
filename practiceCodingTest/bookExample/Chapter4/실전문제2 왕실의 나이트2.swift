import Foundation

func loyalNight3(){
    let location = readLine()!
    let x = Array(location)[0]
    let y = Array(location)[1]
    
    let presetX = Array("abcdefgh")
    let presetY = Array("12345678")
    
    let presetMove = [(1, 2), (1, -2), (2, 1), (2, -1), (-1, 2), (-1, -2), (-2, 1), (-2, -1)]
    
    let xIndex = presetX.firstIndex(of: x)!
    let yIndex = presetY.firstIndex(of: y)!
    
    var result = 0
    
    presetMove.forEach{
        let xMove = $0.0
        let yMove = $0.1
        
        if 0 < xIndex + xMove,
           xIndex + xMove < 8,
           0 < yIndex + yMove,
           yIndex + yMove < 8 {
            result += 1
        }
    }
    
    print(result)
}
