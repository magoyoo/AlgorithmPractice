import Foundation

func numberOf7(_ array:[Int]) -> Int {
    let arrayTostring = array.reduce("", {String($0)+String($1)})

    return Array(arrayTostring).filter { $0 == "7" }.count
}


func numberOf72(_ array: [Int]) -> Int {
    return Array(array.map(String.init).joined()).filter { $0 == "7" }.count
}
