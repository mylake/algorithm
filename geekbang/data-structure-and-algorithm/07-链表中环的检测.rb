def circle_link(head)
  return false unless head

  return true if head && fast.next = nil

  slow = fast = head

  while fast && fast.next
    fast = fast.next.next
    slow = slow.next

    return true if fast == slow
  end

  false
end
