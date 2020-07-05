# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def detectCycle(head)
    return if head.nil? || head.next.nil?

    slow = fast = head
    cycle = false

    while fast && fast.next
        slow = slow.next
        fast = fast.next.next

        if slow == fast
            cycle = true
            break
        end
    end

    if cycle
        fast = head

        while fast != slow
            fast = fast.next
            slow = slow.next
        end

        return fast
    else
        return
    end
end
