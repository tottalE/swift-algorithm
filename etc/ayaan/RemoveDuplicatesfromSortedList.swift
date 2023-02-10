class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard var currentHead = head else {
            return head
        }
        var nodeList: [ListNode] = [currentHead]
        while let nextNode: ListNode = currentHead.next {
            if nodeList.last?.val != nextNode.val {
                nodeList.append(nextNode)
                nodeList[nodeList.count-2].next = nodeList.last
            }
            currentHead = nextNode
        }
        nodeList.last?.next = nil
        return nodeList.first
    }
}
