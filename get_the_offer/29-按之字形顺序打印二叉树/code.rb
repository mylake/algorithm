# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[][]}
def zigzag_level_order(root)
    return [] unless root

    res = []
    queue = []

    queue << root
    left_to_right = true

    while !queue.empty?
        size = queue.size
        temp_res = Array.new(size)
        i = 0

        while i < size
            current = queue.shift

            index = if left_to_right
                      i
                    else
                      size - i -1
                    end
            temp_res[index] = current.val

            queue << current.left if current.left
            queue << current.right if current.right
            i += 1
        end

        left_to_right = !left_to_right
        res << temp_res
    end
    res
end
