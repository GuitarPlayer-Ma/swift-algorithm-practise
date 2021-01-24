import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var l1Head = l1
    var l2Head = l2
    var prev : ListNode? = ListNode(0)
    let prevHead = prev
    while l1Head != nil && l2Head != nil {
        let l1Next = l1Head?.next
        let l2Next = l2Head?.next
        if l1Head!.val <= l2Head!.val {
            prev?.next = l1Head
            l1Head = l1Next
        } else {
            prev?.next = l2Head
            l2Head = l2Next
        }
        prev = prev?.next
    }
    prev?.next = l1Head == nil ? l2Head : l1Head
    return prevHead?.next
}

// 递归解法

func mergeTwoList1(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    if l1 == nil {
        return l2
    }
    if l2 == nil {
        return l1
    }
    
    if l1!.val < l2!.val {
        l1?.next = mergeTwoList1(l1?.next, l2)
        return l1
    } else {
        l2?.next = mergeTwoList1(l1, l2?.next)
        return l2
    }
}
