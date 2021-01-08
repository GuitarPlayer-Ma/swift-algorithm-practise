import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func swapPairs(_ head: ListNode?) -> ListNode? {
    if head == nil || head?.next == nil {
        return head
    }
    let ret = head?.next // 保存head.next节点
    head?.next = swapPairs(head?.next?.next) // head的next指针指向翻转后的链表
    ret?.next = head // head.next节点的next指针指向原head节点（局部翻转）
    return ret
}

