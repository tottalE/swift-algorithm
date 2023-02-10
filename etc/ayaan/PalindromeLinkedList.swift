/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var currentHead: ListNode? = head
        var valueList: [Int] = []
        while currentHead != nil {
            valueList.append(currentHead!.val)
            currentHead = currentHead?.next
        }
        if valueList.count == 1 {
            return true
        } else {
            return Array(valueList.prefix(valueList.count / 2)) == valueList.suffix(valueList.count / 2).reversed()
        }
    }
}
