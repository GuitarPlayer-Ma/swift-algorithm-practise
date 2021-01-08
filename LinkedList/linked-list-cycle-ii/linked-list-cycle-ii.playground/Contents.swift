import Foundation

public class ListNode {
    
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func detectCycle(_ head: ListNode?) -> ListNode? {
    var slow = head
    var fast = head
    while fast == nil && fast?.next == nil {
        slow = slow?.next
        fast = fast?.next?.next
        if slow === fast {
            var node = head
            while node !== fast {
                node = node?.next
                fast = fast?.next
            }
            return fast
        }
    }
    return nil
}



