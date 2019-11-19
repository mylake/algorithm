require 'pry'

# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  result = []
  nums = nums.sort
  return [] if nums.size <= 2 || nums[-1] < 0 || nums[0] > 0

  nums.each_with_index do |num, index|
    next if index >= nums.size - 2

    next if index > 0 && num == nums[index - 1]

    target = 0 - num
    i = index + 1
    j = nums.size - 1

    while (i < j) do
      if (nums[i] + nums[j] == target)
        result.push [num, nums[i], nums[j]]
        while (i < j && nums[i] == nums[i+1]) do i += 1 end
        while (i < j && nums[j] == nums[j-1]) do j -= 1 end
        i += 1
        j -= 1
      elsif (nums[i] + nums[j] < target)
        i += 1
      else
        j -= 1
      end
    end
  end

  result
end


require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal [[-1,-1,2],[-1,0,1]], three_sum([-1,0,1,2,-1,-4])
  end

  def test_2
    assert_equal [[-5,1,4],[-4,0,4],[-4,1,3],[-2,-2,4],[-2,1,1],[0,0,0]], three_sum([-4,-2,1,-5,-4,-4,4,-2,0,4,0,-2,3,1,-5,0])
  end
end
