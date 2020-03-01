def reverse_link(a)
  return a if a.nil? || a.size == 1

  head = nil

  while a.next != nil
    p = a.next
    a.next = head
    head = a
    a = p
  end

  a.next = head
  a
end
