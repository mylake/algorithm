def min_number_in_rotate_array(nums)
  left = 0
  right = nums.size - 1

  while left < right
    mid = left + (right - left)/2
    if nums[mid] > nums[right]
      left = mid + 1
    else
      right = mid
    end
  end
  nums[right]
end


# Divide and Conquer
def find_min(nums)

    helper(nums, 0, nums.size - 1);
end

def helper(nums, left, right)
    return nums[left] if nums[left] <= nums[right]

    mid = left + (right - left)/2
    [helper(nums, left, mid), helper(nums, mid+1, right)].min
end
