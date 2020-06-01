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
# @return {Boolean}
def is_symmetric(root)
    return true if root.nil? || (root.left.nil? && root.right.nil?)

    return true if same_tree(root.left, reverse_tree(root.right))
    false
end


def reverse_tree(root)
    return root if root.nil? || (root.left.nil? && root.right.nil?)
    tmp = root.left
    root.left = reverse_tree(root.right)
    root.right = reverse_tree(tmp)
    root
end

def same_tree(s, t)
    return true if s.nil? && t.nil?
    return false if s.nil? || t.nil?

    pre_order(s).include?(pre_order(t))
end

def pre_order(node)
    return 'nil' unless node
    "node #{node.val} #{pre_order(node.left)} #{pre_order(node.right)}"
end
