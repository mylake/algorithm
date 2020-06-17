def solution(root)
  return if root.nil?

  result = []
  queue = []

  queue << root

  while !queue.empty?
    size = queue.size
    tmp = []

    i = 0
    while i < size
      current = queue.shift
      tmp << current.val
      if current.left
        queue << current.left
      end

      if current.right
        queue << current.right
      end
      i += 1
    end

    result << tmp
  end

  result
end
