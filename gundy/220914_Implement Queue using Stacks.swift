class MyQueue {
    var queue: [Int] = []

    init() {}
    
    func push(_ x: Int) {
        queue.append(x)
    }
    
    func pop() -> Int {
        return queue.removeFirst()
    }
    
    func peek() -> Int {
        guard let first = queue.first else {
            return 0
        }
        return first
    }
    
    func empty() -> Bool {
        return queue.isEmpty
    }
}
