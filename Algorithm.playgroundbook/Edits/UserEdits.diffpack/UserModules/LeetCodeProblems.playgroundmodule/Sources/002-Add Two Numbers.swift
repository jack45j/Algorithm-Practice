extension Solution {
    public func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1 = l1
        var l2 = l2
        var result: ListNode?
        var head: ListNode?
        var carry = 0
        while l1 != nil || l2 != nil  || carry > 0 {
            
            var sum = (l1?.val ?? 0) + (l2?.val ?? 0) + carry
            carry = sum / 10
            sum = sum % 10
            
            if head == nil {
                head = ListNode(sum)
                result = head
            } else {
                result?.next = ListNode(sum)
                result = result?.next
            }
            l1 = l1?.next
            l2 = l2?.next
        }
        return head
    }
}
