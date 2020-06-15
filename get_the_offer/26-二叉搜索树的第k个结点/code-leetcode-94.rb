# Recursive

def inorder_traversal(root)
    res = []
    order(root, res)
    res
end

def order(node=nil, res)
    return if node.nil?

    order(node.left, res) if node.left

    res << node.val

    order(node.right, res) if node.right
end


# iteratively
def inorder_traversal(root)
    stack = []
    res = []

    while root || !stack.empty?
        while root
            stack << root
            root = root.left
        end
        root = stack.pop
        res << root.val
        root = root.right
    end

    res
end


def inorder_traversal(root)
    stack = []
    res = []

    p = root

    while !stack.empty? || p
        if p
            stack << p
            p = p.left
        else
            p = stack.pop
            res << p.val
            p = p.right
        end
    end

    res
end
