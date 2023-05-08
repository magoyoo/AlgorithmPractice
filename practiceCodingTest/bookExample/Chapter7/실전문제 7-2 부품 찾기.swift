import Foundation

func searchPart2(){
    let _ = Int(readLine()!)! // 매장 전체 부품의 수
    let items = readLine()!.split(separator: " ").map { Int($0)! } // 아이템들
    let _ = Int(readLine()!)! // 손님이 요청한 부품의 수
    let proposedItems = readLine()!.split(separator: " ").map { Int($0)! }
    
    let result = proposedItems.map {
        if items.contains($0) { return "yes"}
        else {return "no"}
    }
    
    print(result.joined(separator: " "))
    
}

//5
//8 3 7 9 2
//3
//5 7 9
