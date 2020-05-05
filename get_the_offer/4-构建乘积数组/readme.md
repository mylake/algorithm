题目描述:
给定一个数组A[0,1,...,n-1],请构建一个数组B[0,1,...,n-1],其中B中的元素B[i]=A[0]*A[1]*...*A[i-1]*A[i+1]*...*A[n-1]。不能使用除法。（注意：规定B[0] = A[1] * A[2] * ... * A[n-1]，B[n-1] = A[0] * A[1] * ... * A[n-2];）


解題:

> time: 2n
> space: 2n

1. for certain number, if we know the multiple of all preceding numbers and the multiple of all following numbers, we can get the answer
2. the multiple of all preceding numbers, from left to right, left[i] = left[i-1] * nums[i-1]
3. the multiple of all following numbers, from right to left, right[i-1] = right[i] * nums[i]
4. answer: res[i] = left[i] * right[i]

> space: 1

2. the multiple of all preceding numbers, from left to right, res[i] = res[i-1] * nums[i-1]
3. right = 1
4. res[i] = res[i] * right; right = right * nums[i]
