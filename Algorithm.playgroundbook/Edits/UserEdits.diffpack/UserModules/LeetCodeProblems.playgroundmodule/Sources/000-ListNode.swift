
//   Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }
 
extension ListNode {
    public func debug() {
        var node: ListNode? = self
        while node != nil {
            guard let notNilNode = node else { return }
            DebugLog("Node val: \(notNilNode.val)")
            if notNilNode.next != nil { DebugLog("V") }
            node = notNilNode.next
        }
    }
    
    public func shortDebug() {
        var node: ListNode? = self
        var result = ""
        while node != nil {
            guard let notNilNode = node else { 
                print(result)
                return
            }
            result += "\(notNilNode.val)"
            if notNilNode.next != nil { result += ">>>" }
            node = notNilNode.next
        }
        DebugLog(result)
    }
    
    
}

infix operator ?+
extension Optional where Wrapped == ListNode {
    static public func ?+(lhs: Wrapped?, rhs: Wrapped?) -> Wrapped? { 
        return Solution().addTwoNumbers(lhs, rhs)
    }
}
