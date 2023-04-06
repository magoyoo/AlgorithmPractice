import Foundation

func solution(_ sequence: [Int]) -> Int {
    var sequence = sequence.enumerated().map { $1 * ($0 % 2 == 0 ? 1 : -1) }
    
    for i in 1..<sequence.count {
        sequence[i] += sequence[i - 1]
    }
    
    return max(abs(sequence.max()!), abs(sequence.min()!), abs(sequence.max()! - sequence.min()!))
}
