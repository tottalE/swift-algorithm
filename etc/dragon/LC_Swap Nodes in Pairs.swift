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
two.val = 2
three.val = 3
four.val = 4

one.next = two
two.next = three
three.next = four
four.next = nil

let test = Solution().swapPairs(one)
print(test?.val)
print(test?.next?.val)
print(test?.next?.next?.val)
print(test?.next?.next?.next?.val)

class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        var testHead = head
        var testNum = 0
        
        while testHead?.next != nil {
            testNum = testHead!.val
            testHead!.val = testHead!.next!.val
            testHead!.next!.val = testNum
            testHead = testHead!.next!.next
        }
                
        return head
    }
}
