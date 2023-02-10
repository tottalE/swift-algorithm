class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        guard let head: ListNode = head else {
            return head
        }
        var nodeList: [ListNode] = [head]
        
        while let nextNode: ListNode = nodeList.last?.next {
            nodeList.append(nextNode)
        }
        for index in stride(from: 1, to: nodeList.count, by: 2) {
            nodeList.swapAt(index-1, index)
        }
        for index in 0..<nodeList.count {
            if index == nodeList.count - 1 {
                nodeList[index].next = nil
            } else {
                nodeList[index].next = nodeList[index + 1]
            }
        }
        return nodeList.first
    }
}
