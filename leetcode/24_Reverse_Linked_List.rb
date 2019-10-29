# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# solution 1, iteration
# 1. add new null head and then reverse the next from head to nail
#
# solution 2, recursive
# 1. find the last node first => return the last node
# 2. find the last second node => then
# 2-1. node.next.next = node
# 2-2. node.next = nil

# @param {ListNode} head
# @return {ListNode}
# iteration
def reverse_list(head)
  prev = nil
  curr = head
  while curr != nil
    temp = curr.next
    curr.next = prev
    prev = curr
    curr = temp
  end
  prev
end

# recursive
def reverse_list(head)
  return head if head.nil? || head.next.nil?

  new_head = reverse_list(head.next)
  head.next.next = head
  head.next = nil
  new_head
end
