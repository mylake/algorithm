# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# Encodes a tree to a single string.
#
# @param {TreeNode} root
# @return {string}
def serialize(root)
    result = []
    result = serialize_inner(root, result)
end

def serialize_inner(root, result)
    if root
        result << root.val
        result = serialize_inner(root.left, result)
        result = serialize_inner(root.right, result)
    else
        result << nil
    end
    result
end

# Decodes your encoded data to tree.
#
# @param {string} data
# @return {TreeNode}
def deserialize(data)
    deserialize_inner(data)
end

def deserialize_inner(data)
    return nil if data.empty? || data.first.nil?

    root = TreeNode.new(data.first)
    data.shift
    root.left = deserialize_inner(data)
    data.shift
    root.right = deserialize_inner(data)
    root
end


# Your functions will be called as such:
# deserialize(serialize(data))
