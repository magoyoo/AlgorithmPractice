import Foundation

fileprivate func solution(_ my_string:String) -> [String] {
    my_string.split(separator: " ").map{String($0)}
}
