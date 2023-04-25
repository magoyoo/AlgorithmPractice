import Foundation

fileprivate func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    num_list[0..<n].map {Int($0)}
}
