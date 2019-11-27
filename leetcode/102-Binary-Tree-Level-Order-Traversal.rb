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
  return [] unless root

  result = []
  q = []

  q << root

  while (!q.empty?)
    level_size = q.size
    current_level = []

    0.upto(level_size - 1) do |i|
      current_node = q.shift
      current_level << current_node.val
      if current_node.left
        q << current_node.left
      end

      if current_node.right
        q << current_node.right
      end
    end
    result << current_level
  end
  result
end
