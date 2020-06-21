题目描述
请实现一个函数按照之字形打印二叉树，即第一行按照从左到右的顺序打印，第二层按照从右至左的顺序打印，第三行按照从左到右的顺序打印，其他行以此类推。

https://www.nowcoder.com/practice/91b69814117f4e8097390d107d2efbe0?tpId=13&tqId=11213&rp=1


leetcode 103
https://leetcode.com/problems/binary-tree-zigzag-level-order-traversal/
https://www.cnblogs.com/grandyang/p/4297009.html

reverse
1. 兩個 array, result = [], queue = [], tmp = []
2. 當 queue 有值的時候，先計算目前 queue 的 size 代表，同一層的有多少個節點
3. 從 queue 拿值出來的時候，在把它的子節點放進去 queue 裡
4. 在同一層拿出來的同時，將其值 reverse 後(如果有需要)塞入 result


直接找到該放的位置
1. 兩個 array, result = [], queue = [], tmp_result = []
2. 當 queue 有值的時候，先計算目前 queue 的 size 代表，同一層的有多少個節點
3. 找 temp_result 的 index, if left_to_right => i; else => size - i - 1
