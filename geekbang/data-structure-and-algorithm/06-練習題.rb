class Node
  attr_accessor :next
  attr_reader :value

  def initialize(value)
    @value = value
    @next = nil
  end

end


def is_palindrome?(node)
  return true if node.nil? || node.next.nil?

  prev = nil
  slow = node
  fast = node

  while (fast != nil || fast.next != nil)
    fast = fast.next.next
    next_node = slow.next
    slow.next = prev
    prev = slow
    slow = next_node
  end

  unless fast.nil?
    slow = slow.next
  end

  while !slow.nil?
    return false if slow.value != prev.value

    slow = slow.next
    prev = prev.next
  end

  return true
end
