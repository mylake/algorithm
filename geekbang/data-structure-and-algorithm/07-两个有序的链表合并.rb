# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
#
# recursive way
def merge_two_lists(l1, l2)
  return l2 unless l1

  return l1 unless l2

  if l1.val < l2.val
    l1.next = merge_two_lists(l1.next, l2)
    return l1
  else
    l2.next = merge_two_lists(l1, l2.next)
    return l2
  end
end

def merge_two_lists_non_recursive(l1, l2)
  return l2 unless l1

  return l1 unless l2

  pre = current = ListNode.new

  while l1 && l2
    if l1.val > l2.val
      current.next = l2
      l2 = l2.next
    else
      current.next = l1
      l1 = l1.next
    end
    current = current.next
  end

  current.next = l1 if l1

  current.next = l2 if l2

  pre.next
end
