# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = {}
  result = []
  nums.each_with_index do |num, index|
    if hash[target - num]
      result[0] = index
      result[1] = hash[target - num]
    end
    hash[num] = index
  end
  result
end
