# @param {String} s
# @return {Boolean}
def is_valid(s)
  return false unless s

  mapping = { ')': '(', '}': '{', ']': '[' }
  stack = []

  s.each_char do |c|
    if !mapping[c.to_sym]
      stack.push c
    elsif mapping[c.to_sym] != stack.pop
      return false
    end
  end
  stack.empty? ? true : false
end
