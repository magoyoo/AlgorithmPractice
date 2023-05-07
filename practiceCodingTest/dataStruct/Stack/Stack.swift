import Foundation

class Stack2<T> {
    private var data: [T] = []
    
    var count: Int {
        data.count
    }
    
    init(_ data: [T]){
        self.data = data
    }
    
    func push(_ item: T){
        data.append(item)
    }
    
    func pop() -> T?{
        return data.popLast()
    }
}

class Queue2<T> {
    var data: [T] = []
    
    init(_ data: [T]){
        self.data = data
    }
    
    func equeue(_ item: T){
        data.append(item)
    }
    
    func dequeue() -> T?{
        return data.removeFirst()
    }
}

