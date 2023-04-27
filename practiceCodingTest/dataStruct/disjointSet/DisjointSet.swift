import Foundation

// 각 두 개의 값의 소속을 찾고, 소속이 다르면 두 소속 중 높은 소속으로 통합된다.
class DisJointSet {
    private var parentTemp: [Int]
    
    init(_ size: Int) {
        parentTemp = Array(0..<size)
    }

    
    func findAndUpdate(_ x: Int) -> Int {
        if parentTemp[x] != x {
            parentTemp[x] = findAndUpdate(parentTemp[x])
        }
        return parentTemp[x]
    }
        
    func union(_ x: Int, _ y: Int) {
        let rootX = findAndUpdate(x)
        let rootY = findAndUpdate(y)
        
        // 두 값이 속한 두집합이 서로수임
        if rootX < rootY {
            parentTemp[rootY] = rootX
        } else {
            parentTemp[rootX] = rootY
        }
    }
    
    func getTotalParent() -> [Int] {
        return Array(0..<parentTemp.count).map { findAndUpdate($0) }
    }
}
