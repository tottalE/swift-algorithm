class Solution {
    func sortList(_ head: ListNode?) -> ListNode? {
        guard let start = head else { return nil }
        var nodes: [ListNode] = [start]
        while let next = nodes.last?.next {
            nodes.append(next)
        }
        let sortedList: [ListNode] = nodes.sorted { $0.val < $1.val }
        for index in 0..<sortedList.count - 1 {
            sortedList[index].next = sortedList[index + 1]
        }
        sortedList.last?.next = nil
        return sortedList.first
    }
}
