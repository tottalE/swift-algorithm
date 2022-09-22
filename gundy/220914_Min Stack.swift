class MinStack {
    var stack: [Int] = []

    init() {}
    
    func push(_ val: Int) {
        stack.append(val)
    }
    
    func pop() {
        stack.popLast()
    }
    
    func top() -> Int {
        guard let last = stack.last else {
            return 0
        }
        return last
    }
    
    func getMin() -> Int {
        let sortedStack: [Int] = stack.sorted()
        guard let first = sortedStack.first else {
            return 0
        }
        return first
    }
}
