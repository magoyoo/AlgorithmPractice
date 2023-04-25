import Foundation

func qrCodeSolution(_ q:Int, _ r:Int, _ code:String) -> String {
    Array(code).enumerated().filter { $0.offset % q == r }.map { String($0.element) }.joined()
}
