# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def get_kth_from_end(head, k)
    slow = fast = head

    (k-1).times do
        fast = fast.next
    end

    while fast.next
        slow = slow.next
        fast = fast.next
    end

    return slow
end
