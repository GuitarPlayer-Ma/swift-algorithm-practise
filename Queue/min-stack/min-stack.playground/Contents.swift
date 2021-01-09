import Foundation

class MinStack {

    var stack : [Int]
    var minStack : [Int]
    
    /** initialize your data structure here. */
    init() {
        stack = [Int]()
        minStack = [Int]()
        minStack.append(Int.max)
    }
    
    func push(_ x: Int) {
        stack.append(x)
        minStack.append(min(minStack.last!, x))
    }
    
    func pop() {
        stack.removeLast()
        minStack.removeLast()
    }
    
    func top() -> Int {
        stack.last!
    }
    
    func getMin() -> Int {
        return minStack.last!
    }
}

