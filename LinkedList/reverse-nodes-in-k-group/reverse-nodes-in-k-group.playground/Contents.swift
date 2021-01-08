import Foundation

public class ListNode {
    
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

private func reverse(_ head: ListNode?) -> ListNode? {
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

func reverseKGroup1(_ head: ListNode?, _ k: Int) -> ListNode? {
    if head == nil || head?.next == nil {
        return head
    }
    var tail = head
    for _ in 1 ..< k {
        tail = tail?.next
        if tail == nil {
            return head
        }
    }
    let next = tail?.next
    tail?.next = nil
    let curHead = reverse(head)
    head?.next = reverseKGroup1(next, k)
    return curHead
}

func reverseKGroup2(_ head: ListNode?, _ k: Int) -> ListNode? {
    let dummy = ListNode(0,head)
    var pre : ListNode? = dummy
    var tail = head
    while tail != nil {
        for _ in 1..<k {
            tail = tail?.next
        }
        if tail == nil {
            break
        }
        let start = pre?.next
        let next = tail?.next
        tail?.next = nil
        pre?.next = reverse(pre?.next)
        start?.next = next
        pre = start
        tail = start?.next
    }
    return dummy.next
}

var head = ListNode(1,ListNode(2,ListNode(3,ListNode(4,ListNode(5,nil)))))

let node = reverseKGroup1(head, 3)

node?.val
node?.next?.val
node?.next?.next?.val
node?.next?.next?.next?.val
node?.next?.next?.next?.next?.val
