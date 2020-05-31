# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
    result = ListNode.new
    l = result

    while l1 && l2
        if l1.val < l2.val
            l.next = l1
            l1 = l1.next
        else
            l.next = l2
            l2 = l2.next
        end
        l = l.next
    end

    l.next = l1 if l1
    l.next = l2 if l2

    result.next
end
