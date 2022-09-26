public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    var curr = head
    
    while curr != nil {
        let sort = curr
        while sort?.val == sort?.next?.val {
            sort?.next = sort?.next?.next
        }
        curr = curr?.next
    }
    return head
}
