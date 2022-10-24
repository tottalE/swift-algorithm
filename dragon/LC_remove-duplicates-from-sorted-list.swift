import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

let one = ListNode.init()
let two = ListNode.init()
let three = ListNode.init()
let four = ListNode.init()
let five = ListNode.init()

one.val = 1
two.val = 1
three.val = 2
four.val = 3
five.val = 3

one.next = two
two.next = three
three.next = four
four.next = five
five.next = nil

let test = Solution().deleteDuplicates(one)
print(test?.val)
print(test?.next?.val)
print(test?.next?.next?.val)

class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var test_head = head
        
        while test_head?.next != nil {
            while test_head?.val == test_head?.next?.val {
                test_head?.next = test_head?.next?.next
            }
            test_head = test_head?.next
        }
        
        return head
    }
}
