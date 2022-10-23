import Foundation

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

func isPalindrome(_ head: ListNode?) -> Bool {
    var test_head = head
    var arr: [Int] = []
    
    while test_head != nil {
        if let value = test_head?.val {
            arr.append(value)
        }
        test_head = test_head?.next
    }
    
    if arr == arr.reversed() {
        return true
    } else {
        return false
    }
}

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
