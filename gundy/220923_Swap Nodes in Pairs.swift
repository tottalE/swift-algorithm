class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        var nodes: [ListNode] = []
        var result: [ListNode] = []
        var currentNode: ListNode = .init()
        currentNode.next = head
        while let next = currentNode.next {
            nodes.append(next)
            currentNode = next
        }
        switch nodes.isEmpty {
        case true:
            return head
        case false:
            for index in 0..<nodes.count {
                switch index % 2 {
                case 0:
                    result.append(nodes[index])
                default:
                    result.insert(nodes[index], at: index-1)
                }
            }
            for index in 0..<result.count {
                switch index {
                case result.count - 1:
                    result[index].next = nil
                default:
                    result[index].next = result[index + 1]
                }
            }
            return result.first
        }
    }
}
