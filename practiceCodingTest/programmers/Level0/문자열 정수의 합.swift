import Foundation

fileprivate func solution(_ num_str:String) -> Int {
    return Array(num_str).reduce(0) { $0 + Int(String($1))!}
}

