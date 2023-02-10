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
let six = ListNode.init()
let seven = ListNode.init()

one.val = 1
two.val = 2
three.val = 2
four.val = 3
five.val = 3
six.val = 4
seven.val = 5

one.next = two
two.next = three
three.next = four
four.next = five
five.next = six
six.next = seven
seven.next = nil

let test = Solution().swapPairs(one)
print(test?.val)
print(test?.next?.val)
print(test?.next?.next?.val)
print(test?.next?.next?.next?.val)
print(test?.next?.next?.next?.next?.val)
print(test?.next?.next?.next?.next?.next?.val)
print(test?.next?.next?.next?.next?.next?.next?.val)

class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        var prevNode = ListNode(0)
        prevNode.next = head
        var node = prevNode
        
        while let nodeNext = node.next, nodeNext.next != nil {
            if nodeNext.val == nodeNext.next?.val {
                while nodeNext.val == node.next?.val {
                    node.next = node.next!.next
                }
            } else {
                node = nodeNext
            }
        }
        
        return prevNode.next
    }
}
