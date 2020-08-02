# @param {Integer[]} postorder
# @return {Boolean}
def verify_postorder(postorder)
    stack = []
    root = 100000000000

    i = postorder.size - 1

    while i >= 0
        return false if postorder[i] > root

        while !stack.empty? && stack[-1] > postorder[i]
            root = stack.pop
        end
        stack << postorder[i]
        i -= 1
    end

    true
end
