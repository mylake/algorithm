# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} s
# @param {TreeNode} t
# @return {Boolean}
def is_subtree(s, t)
    return false unless s
    return true if is_same(s, t)
    return is_subtree(s.left, t) || is_subtree(s.right, t)
end

def is_same(s, t)
    return true if s.nil? && t.nil?
    return false if s.nil? || t.nil?
    return false if s.val != t.val
    return is_same(s.left, t.left) && is_same(s.right, t.right)
end
