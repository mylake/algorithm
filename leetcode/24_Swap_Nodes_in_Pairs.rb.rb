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
# iterative
def swap_pairs(head)
  dummy = prev = ListNode.new(nil)
  dummy.next = head

  while prev.next && prev.next.next
    temp = prev.next.next
    prev.next.next = temp.next
    temp.next = prev.next
    prev.next = temp
    prev = temp.next
  end

  dummy.next
end


# recursive
def swap_pairs(head)
  return head if head.nil? || head.next.nil?

  temp = head.next
  head.next = swap_pairs(head.next.next)
  temp.next = head;
  temp
end
