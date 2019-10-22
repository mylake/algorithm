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
  return head if head.nil? || k == 1

  dummy = ListNode.new(0)
  prev = dummy
  current = head
  dummy.next = head

  i = 1
  while current
    if (i % k == 0)
      prev = reverse_1_group(prev, current.next)
      current = prev.next
    else
      current = current.next
    end
    i = i+1
  end
  dummy.next
end

def reverse_1_group(pre, next_1)
  last = pre.next
  cur = last.next
  while (cur != next_1)
    last.next = cur.next
    cur.next = pre.next
    pre.next = cur
    cur = last.next
  end
  last
end
