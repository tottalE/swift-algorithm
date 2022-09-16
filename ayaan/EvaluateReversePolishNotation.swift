public struct Stack<T> {
    private var elements: Array<T> = [T]()
    
    public init() {}
    
    public mutating func pop() -> T? {
        return self.elements.popLast()
    }
    
    public mutating func push(_ element: T) {
        self.elements.append(element)
    }
}

class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack: Stack<Int> = Stack<Int>()
        for element in tokens {
            if let number = Int(element) {
                stack.push(number)
            } else {
                let left = stack.pop()!
                let right = stack.pop()!
                stack.push(calcNumber(right, left, flag: element))
            }
        }
        return stack.pop()!
    }
    
    func calcNumber(_ rhs: Int, _ lhs: Int, flag: String) -> Int {
        switch flag {
        case "+":
            return rhs + lhs
        case "-":
            return rhs - lhs
        case "*":
            return rhs * lhs
        default:
            return rhs / lhs
        }
    }
}
