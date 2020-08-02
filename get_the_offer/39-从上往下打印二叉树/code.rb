# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}
def level_order(root)
    return [] if root.nil?

    res = []
    queue = []
    queue << root

    while !queue.empty?
        size = queue.size

        tmp_res = []
        size.times do
            current = queue.shift
            tmp_res << current.val

            queue << current.left if current.left
            queue << current.right if current.right
        end
        res << tmp_res
    end

    res
end
