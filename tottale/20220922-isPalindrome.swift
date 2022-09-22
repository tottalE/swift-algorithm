
public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


func isPalindrome(_ head: ListNode?) -> Bool {
    var head = head
    var arr: [Int] = []
    
    while head != nil {
        arr.append(head!.val)
        head = head?.next
    }
    
    var i = 0
    var k = arr.count - 1
    
    while i <= k {
        guard arr[i] == arr[k] else {
            return false
        }
        i += 1
        k -= 1
    }
    
    return true
}
