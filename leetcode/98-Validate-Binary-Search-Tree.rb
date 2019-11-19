# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_valid_bst(root)
  is_valid?(root, -Float::INFINITY, Float::INFINITY)
end

def is_valid?(root, min, max)
  return true if root.nil?

  return false if (min != nil && root.val <= min)
  return false if (max != nil && root.val >= max)

  is_valid?(root.left, min, root.val) &&
  is_valid?(root.right, root.val, max)
end
