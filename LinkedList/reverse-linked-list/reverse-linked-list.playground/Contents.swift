import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

// 双指针
func reverseList1(_ head: ListNode?) -> ListNode? {
    var pre : ListNode? = nil
    var current = head
    while current != nil {
        let node = current?.next
        current?.next = pre
        pre = current
        current = node
    }
    
    return pre
}

func reverseList2(_ head: ListNode?) -> ListNode? {
    if head == nil || head?.next == nil {
        return head
    }
    let ret = reverseList2(head?.next)
    head?.next?.next = head
    head?.next = nil
    return ret
}
