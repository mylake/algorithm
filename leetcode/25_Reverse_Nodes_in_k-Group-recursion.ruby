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
def reverse_k_group(head, k)
  cur = head
  for i in 0...k
    return head unless cur
    cur = cur.next
  end

  new_head = reverse(head, cur)
  head.next = reverse_k_group(cur, k)
  new_head
end

def reverse(head, cur)
  pre = cur;
  while head != cur
    t = head.next
    head.next = pre
    pre = head
    head = t
  end
  pre
end
