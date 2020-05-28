#Leetcode 206

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
# iterate
def reverse_list(head)
    prev = nil

    while head
        later = head.next
        head.next = prev
        prev = head
        head = later
    end
    prev
end



# recrusive
def reverse_list(head)
    if head.nil? || head.next.nil?
        return head
    end

    node = reverse_list(head.next)
    head.next.next = head
    head.next = nil
    node
end
