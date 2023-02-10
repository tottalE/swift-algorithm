struct Queue {
    var elements: [String] = []
    var count: Int {
        return elements.count
    }
    
    mutating func enqueue(_ element: String) {
        elements.append(element)
    }
    
    mutating func dequeue() -> String? {
        if elements.isEmpty {
            return nil
        }
        return elements.removeLast()
    }
}

class Solution {
    func simplifyPath(_ path: String) -> String {
        let componentedPath: [String] = path.split(separator: "/", omittingEmptySubsequences: true).map({String($0)})
        var pathQueue: Queue = Queue()
        for directory in componentedPath {
            if directory == "." {
                continue
            } else if directory == ".." {
                pathQueue.dequeue()
            } else {
                let element = "/\(directory)"
                pathQueue.enqueue(element)
            }
        }
        return pathQueue.count == 0 ? "/" : pathQueue.elements.joined()
    }
}
