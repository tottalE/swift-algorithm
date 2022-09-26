class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var nodes: [ListNode] = []
        var sortedNodes: [ListNode] = []
        guard let first = head else {
            return head
        }
        nodes.append(first)
        while let next = nodes.last?.next {
            nodes.append(next)
        }
        while nodes.isEmpty != true {
            if sortedNodes.isEmpty {
                sortedNodes.append(nodes.removeFirst())
            } else {
                guard sortedNodes.last?.val != nodes.first?.val else {
                    nodes.removeFirst()
                    continue
                }
                sortedNodes.append(nodes.removeFirst())
            }
        }
        for index in 0..<sortedNodes.count {
            guard sortedNodes[index].val != sortedNodes.last?.val else {
                sortedNodes[index].next = nil
                break
            }
            sortedNodes[index].next = sortedNodes[index + 1]
        }
        return sortedNodes.first
    }
}
