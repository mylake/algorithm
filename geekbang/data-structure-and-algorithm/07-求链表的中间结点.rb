# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

def find_center_node(head)
  slow = fast = head

  while fast&.next
    slow = slow.next
    fast = fast.next.next
  end

  slow
end
