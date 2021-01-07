import Foundation

public class ListNode {
    
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
// 解法1: 利用map
func hasCycle1(_ head: ListNode?) -> Bool {
    var current = head
    var map = [ListNode?]()
    while current != nil {
        if map.contains(where: { (node) -> Bool in
            return current === node
        }) {
            return true
        }
        map.append(current)
        current = current?.next
    }
    return false
}

// 解法2：快慢指针
func hasCycle2(_ head: ListNode?) -> Bool {
    if head == nil || head?.next == nil {
        return false
    }
    var slow = head
    var fast = head?.next
    while slow !== fast {
        if fast == nil || fast?.next == nil {
            return false
        }
        slow = slow?.next
        fast = fast?.next?.next
    }
    return true
}

