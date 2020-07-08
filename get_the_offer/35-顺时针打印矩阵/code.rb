# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
    return [] if matrix.empty? || matrix[0].empty?

    m = matrix.size
    n = matrix[0].size

    result = []

    up = 0
    right = n - 1
    down = m - 1
    left = 0

    while true
        j = left
        while j <= right
            result << matrix[up][j]
            j += 1
        end

        up += 1
        break if up > down

        i = up
        while i <= down
            result << matrix[i][right]
            i += 1
        end
        right -= 1
        break if right < left

        j = right
        while j >= left
            result << matrix[down][j]
            j -= 1
        end
        down -= 1
        break if down < up

        i = down
        while i >= up
            result << matrix[i][left]
            i -= 1
        end
        left += 1
        break if left > right
    end

    result
end
