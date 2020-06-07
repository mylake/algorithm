题目描述
如何得到一个数据流中的中位数？如果从数据流中读出奇数个数值，那么中位数就是所有数值排序之后位于中间的数值。如果从数据流中读出偶数个数值，那么中位数就是所有数值排序之后中间两个数的平均值。我们使用Insert()方法读取数据流，使用GetMedian()方法获取当前读取数据的中位数。


https://www.cnblogs.com/grandyang/p/4896673.html
https://leetcode.com/problems/find-median-from-data-stream/

解法
1. 插入時，找到要插入的位置，再插入
2. 查中位數時，直接取（因為已經排序好了）
