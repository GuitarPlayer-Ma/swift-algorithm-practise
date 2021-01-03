import Foundation


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
    var lowNode = ListNode(0)
    let lowNodeHead = lowNode
    var highNode = ListNode(0)
    let highNodeHead = highNode
    var temHead = head
    
    while temHead != nil {
        if temHead!.val < x {
            lowNode.next = temHead
            lowNode = lowNode.next!
        } else {
            highNode.next = temHead
            highNode = highNode.next!
        }
        temHead = temHead?.next
    }
    
    lowNode.next = highNodeHead.next
    highNode.next = nil
    return lowNodeHead.next
}
