题目描述
把一个数组最开始的若干个元素搬到数组的末尾，我们称之为数组的旋转。
输入一个非递减排序的数组的一个旋转，输出旋转数组的最小元素。
例如数组{3,4,5,1,2}为{1,2,3,4,5}的一个旋转，该数组的最小值为1。
NOTE：给出的所有元素都大于0，若数组大小为0，请返回0。


解題:

O(logn) => binary search

iteration
1. check from left to right
2. get mid value
3. if mid_value < right_value => result must be in the left part => right = mid, continue
4. if mid_value > right_value => result mst be in the right part => left = mid + 1, continue

recursive

1. 每次間數值從中間分成兩段，遞迴找最小值
2. [helper(nums, left, mid), helper(nums, mid+1, right)].min
