def is_subtree(s, t)
    pre_order(s).include?(pre_order(t))
end


def pre_order(node)
    return 'nil' unless node
    "node #{node.val} #{pre_order(node.left)} #{pre_order(node.right)}"
end
