# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
    return if nums.empty?

    slow = fast = t = 0

    while true
        slow = nums[slow]
        fast = nums[nums[fast]]
        break if slow == fast
    end


    while true
        slow = nums[slow]
        t = nums[t]
        break if t == slow
    end

    slow
end
