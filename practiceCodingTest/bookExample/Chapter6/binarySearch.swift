import Foundation


func binarySearch(_ array: [Int], _ target: Int , _ start: Int, _ end: Int) -> Int? {
    if start > end {
        return nil
    }
    
    let middle = (start + end)/2
    
    if array[middle] == target {
        return middle
    } else if array[middle] > target {
        return binarySearch(array, target, start, middle - 1)
    } else {
        return binarySearch(array, target, middle + 1, end)
    }
}

func testBinarySearch(){
    let target = readLine()!
    let array = readLine()!
        .split(separator: " ")
        .map { String($0) }

    let result = binarySearch2(array, key: target)

    if let result = result {
        print("\(result) 번째 index에 있습니다.")
    } else {
        print("값이 존재하지 않습니다.")
    }
}


func binarySearch2<T: Comparable>(_ array: [T], key: T) -> Int? {
    var lowerBound = 0
    var upperBound = array.count - 1
    
    while lowerBound <= upperBound {
        let midIndex = (lowerBound + upperBound) / 2
        let midValue = array[midIndex]
        
        if midValue == key {
            return midIndex
        } else if midValue < key {
            lowerBound = midIndex + 1
        } else {
            upperBound = midIndex - 1
        }
    }
    
    return nil
}
