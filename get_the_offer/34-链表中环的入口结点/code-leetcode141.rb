# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
    return false if head.nil? || head.next.nil?

    slow = fast = head

    while !fast.nil? && !fast.next.nil?
        slow = slow.next
        fast = fast.next.next

        return true if slow == fast
    end

    false
end
