# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @param {Integer} d
# @param {Integer} e
# @param {Integer} f
# @param {Integer} g
# @param {Integer} h
# @return {Integer}
def compute_area(a, b, c, d, e, f, g, h)
  sum1 = (c-a) * (d-b)
  sum2 = (g-e) * (h-f)

  left_x = [a, e].max
  left_y = [b, f].max
  right_x = [[c, g].min, left_x].max
  right_y = [[d, h].min, left_y].max

  need_delete = (right_x - left_x) * (right_y - left_y)

  sum1 - need_delete + sum2

end


# 1. 找出所有不相交的情況 - 相交的情況
# 2. 考慮沒有相交的情況
