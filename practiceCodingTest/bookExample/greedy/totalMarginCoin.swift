

/// "이것이 코딩테스트다" 3-1 거스름돈
/// - Parameters:
///   - first: 거스름돈 총 액수
func totalMarginCoin(_ first: String){
    let n = Int(first)!
    let units = [500, 100 ,50 , 10]
    
    var margin = n
    var result = 0
    
    for unit in units {
        result += margin / unit
        margin %= unit
    }

    print(result)
}


