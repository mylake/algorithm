# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end



def delete_last_n_node(head, n)
  dummy = ListNode.new(nil)
  dummy.next = head
  first = second = dummy

  (n + 1).times do
    first = first.next
  end

  while first
    second = second.next
    first = first.next
  end

  second.next = second.next.next
  dummy.next
end
