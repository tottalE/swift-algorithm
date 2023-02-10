class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var valueStack: [Int] = []
        var currentNode = head
        while currentNode != nil {
            if let value = currentNode?.val {
                valueStack.append(value)
            }
            currentNode = currentNode?.next
        }
        if valueStack == valueStack.reversed() {
            return true
        } else {
            return false
        }
    }
}
