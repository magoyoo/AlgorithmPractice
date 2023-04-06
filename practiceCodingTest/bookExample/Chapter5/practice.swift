import Foundation

class Stack<T> {
    private var stack: [T] = []
    
    
    func push(_ data: T){
        stack.append(data)
    }
    
    func pop() -> T? {
        return stack.popLast()
    }
    
    func getStack() -> [T]{
        return stack
    }
    
    func getStackCount() -> Int{
        return stack.count
    }
}

class Queue<T> {
    private var queue: [T] = []
    
    
    func equeue(_ data: T){
        queue.append(data)
    }
    
    func dequeue() -> T? {
        return queue.removeFirst()
    }
    
    func getStack() -> [T]{
        return queue.reversed()
    }
    
    func getStackCount() -> Int{
        return queue.count
    }
}

func factorialTest(_ n: Int) -> Int{
    if n > 0 {
        return n * factorialTest(n - 1)
    }
        
    return 1
}
