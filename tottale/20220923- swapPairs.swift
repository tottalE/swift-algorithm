public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func swapPairs(_ head: ListNode?) -> ListNode? {
    let dummy = ListNode(0, head)
    var prev: ListNode? = dummy, curr: ListNode? = head
    
    while curr != nil && curr?.next != nil {
        // save pointers
        let nextPair = curr?.next?.next
        let second = curr?.next
        
        // swap
        second?.next = curr
        curr?.next = nextPair
        prev?.next = second
        
        // update ptrs
        prev = curr
        curr = nextPair
    }
    

    return dummy.next
}
