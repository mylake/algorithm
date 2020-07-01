# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
    return head if head.nil? || head.next.nil?

    result = ListNode.new
    pre = result
    pre.next = head

    while pre.next
        cur = pre.next

        while cur.next && cur.val == cur.next.val
            cur = cur.next
        end

        if cur != pre.next
            pre.next = cur.next
        else
            pre = pre.next
        end
    end

    result.next
end
