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
# @param {Integer} k
# @return {Integer}
# # divide and conquer
def kth_smallest(root, k)
    cnt = count(root.left)

    if k <= cnt
        return kth_smallest(root.left, k)
    elsif k > cnt + 1
        return kth_smallest(root.right, k - cnt - 1)
    end

    root.val
end


def count(root=nil)
    return 0 if root.nil?

    1 + count(root.left) + count(root.right)
end
