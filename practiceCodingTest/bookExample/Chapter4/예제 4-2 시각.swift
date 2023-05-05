import Foundation

func findThree(){
    let n = Int(readLine()!)!
    var result = 0
    
    for i in 0...n {
        for j in 0..<60 {
            for k in 0..<60 {
                if hasThree(i) || hasThree(j) || hasThree(k) {
                    result += 1
                }
            }
    
        }
    }
    
    print(result)
}

func hasThree(_ value: Int) -> Bool {
    return String(value).contains("3")
}

