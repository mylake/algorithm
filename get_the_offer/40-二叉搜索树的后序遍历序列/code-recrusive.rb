# @param {Integer[]} postorder
# @return {Boolean}
def verify_postorder(postorder)

    last_pos = postorder.size - 1
    check(postorder, 0, last_pos)
end


def check(postorder, i, j)
    return true if i >= j

    last_left = i
    while postorder[last_left] < postorder[j]
        last_left += 1
    end

    last_right = last_left
    while postorder[last_right] > postorder[j]
        last_right += 1
    end

    last_right == j && check(postorder, i, last_left - 1) && check(postorder, last_left, j - 1)
end
