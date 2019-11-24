# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  array = {}
  majority_num = nums.size / 2 + 1
  nums.each do |num|
    array[num] = array[num].to_i + 1
    return num if array[num] == majority_num
  end
end
