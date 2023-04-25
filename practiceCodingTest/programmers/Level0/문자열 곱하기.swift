import Foundation

fileprivate func solution(_ my_string:String, _ k:Int) -> String {
    return Array(repeating: my_string, count: k).joined()
}
