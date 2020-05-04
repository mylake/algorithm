# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_sliding_window(nums, k)
    res = []
    deque = []

    nums.each_with_index do |num, index|
        if !deque.empty? && deque[0] == index - k
            deque.shift
        end

        while !deque.empty? && nums[deque[-1]] < num
            deque.pop
        end

        deque << index

        if index >= k - 1
            res << nums[deque[0]]
        end
    end
    res
end
