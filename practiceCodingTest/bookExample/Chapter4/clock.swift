import Foundation

func find3(_ firstLine: String){
    let n = Int(firstLine)!
    let searchText = "3"
    var result = 0
    for h in 0..<n+1 {
        for m in 0..<60 {
            for s in 0..<60 {
             
                if String(h).contains(searchText)
                    || String(m).contains(searchText)
                    || String(s).contains(searchText) {
                    result += 1
                }
            }
        }
    }
    print (result)
}
