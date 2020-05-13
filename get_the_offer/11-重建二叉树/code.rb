# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} preorder
# @param {Integer[]} inorder
# @return {TreeNode}
def build_tree(preorder, inorder)
    build(preorder, 0, preorder.size - 1, inorder, 0, inorder.size - 1)
end


def build(preorder, p_left, p_right, inorder, i_left, i_right)
    return if p_left > p_right || i_left > i_right

    i = i_left
    while i <= i_right
        break if preorder[p_left] == inorder[i]

        i += 1
    end

    cur_node = TreeNode.new(preorder[p_left])
    cur_node.left = build(preorder, p_left + 1, p_left + i - i_left, inorder, i_left, i - 1)
    cur_node.right = build(preorder, p_left + i - i_left + 1 , p_right, inorder, i + 1, i_right)

    cur_node
end
