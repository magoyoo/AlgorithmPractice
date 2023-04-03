import Foundation

func loyalNight(_ firstLine: String){
    let xConstants = Array("abcdefgh")
    let yConstants = Array("12345678")
    
    let xIndex = Int(xConstants.firstIndex(of: Array(firstLine)[0])!)
    let yIndex = Int(yConstants.firstIndex(of: Array(firstLine)[1])!)
    
    var result = 0
    
    let movableArray = [(-2, -1), (-2, 1), (2, -1), (2, 1), (-1, -2), (-1, 2), (1, -2), (1, 2)]
    
    for movable in movableArray {
        if xIndex + movable.0 >= 0
            && xIndex + movable.0 < 8
            && yIndex + movable.1 < 8
            && yIndex + movable.1 >= 0 {
            result += 1
        }
    }
    
    print(result)
}

func loyalNight2(_ firstLine: String){
    let xConstants = "abcdefgh"
    let yConstants = "12345678"
    let x = Array(firstLine)[0]
    let y = Array(firstLine)[1]
    guard let stringXIndex = xConstants.firstIndex(of: x),
          let stringYIndex = yConstants.firstIndex(of: y) else { return }
    
    let xIndex = stringXIndex.utf16Offset(in: xConstants)
    let yIndex = stringYIndex.utf16Offset(in: yConstants)
    
    var result = 0
    
    let movableArray = [(-2, -1), (-2, 1), (2, -1), (2, 1), (-1, -2), (-1, 2), (1, -2), (1, 2)]
    
    for movable in movableArray {
        if xIndex + movable.0 >= 0
            && xIndex + movable.0 < 8
            && yIndex + movable.1 < 8
            && yIndex + movable.1 >= 0 {
            result += 1
        }
    }
    
    print(result)
}
