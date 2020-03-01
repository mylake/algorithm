# Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
#
# An input string is valid if:
#
# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.

def is_valid(s)
  return false unless s

  mapping = {
    ')': 'C',
    '}': '{',
    ']': '['
  }

  stack = []

  s.each_char do |c|
    if !mapping[c.to_sym]
      stack << c
    elsif mapping[c.to_sym] != stack.pop
      return false
    end
  end

  stack.empty? ? true : false
end
