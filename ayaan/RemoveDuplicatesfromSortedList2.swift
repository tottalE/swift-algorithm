class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard var currentHead = head,
              currentHead.next != nil else {
            return head
        }
        var nodeList: [ListNode] = [currentHead]
        while let nextNode: ListNode = currentHead.next {
            if nextNode.val == currentHead.val {
                nodeList.removeAll(where: {$0.val == currentHead.val})
            } else {
                nodeList.last?.next = nextNode
                nodeList.append(nextNode)
            }
            currentHead = nextNode
        }
        nodeList.last?.next = nil
        
        return nodeList.first
    }
}
