# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
   return [] if nums.empty?
    res = Array.new(nums.size)
    res[0] = 1
    res[nums.size - 1] = 1


    i = 1
    while i < nums.size
        res[i] = res[i-1] * nums[i-1]
        i = i + 1
    end

    i = nums.size - 1
    right = 1
    while i >= 0
        res[i] = res[i] * right
        right = right * nums[i]
        i = i - 1
    end


    res
end
