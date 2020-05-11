# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
    return false if matrix.empty?
    return false if matrix[0].empty?

    left = 0
    right = matrix.size

    while left < right
        mid = left + (right - left)/2
        return true if matrix[mid][0] == target

        if matrix[mid][0] < target
            left = mid + 1
        else
            right = mid
        end
    end

    line = right <= 0 ? 0 : right - 1

    left = 0
    right = matrix[line].size

    while left < right
        mid = left + (right - left)/2
        return true if matrix[line][mid] == target

        if matrix[line][mid] < target
            left = mid + 1
        else
            right = mid
        end
    end

    false
end
