# @param {Integer} m
# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def moving_count(m, n, k)
  return 0 if k < 0 || m < 1 || n < 1

  visited = Array.new(m) { Array.new(n, false) }

  moving_counter(m, n, k, 0, 0, visited)
end


def moving_counter(rows, cols, threshold, row, col, visited)
  count = 0
  if validate(rows, cols, threshold, row, col, visited)
    visited[row][col] = true
    count = 1 +
      moving_counter(rows, cols, threshold, row+1, col, visited) +
      moving_counter(rows, cols, threshold, row, col+1, visited) +
      moving_counter(rows, cols, threshold, row-1, col, visited) +
      moving_counter(rows, cols, threshold, row, col-1, visited)
  end
  count
end

def validate(rows, cols, threshold, row, col, visited)
  (col >= 0 && col < cols) &&
    (row >= 0 && row < rows) &&
    visited[row][col] == false &&
    (get_digit_sum(col) + get_digit_sum(row) <= threshold)
end

def get_digit_sum(number)
  result = 0
  while number > 0
    result += number % 10
    number /= 10
  end
  result
end
