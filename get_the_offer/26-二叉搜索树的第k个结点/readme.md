题目描述
给定一棵二叉搜索树，请找出其中的第k小的结点。例如， （5，3，7，2，4，6，8）    中，按结点数值大小顺序第三小结点的值为4。





leetcode 94: https://leetcode.com/problems/binary-tree-inorder-traversal/
詳解: https://www.cnblogs.com/grandyang/p/4297300.html


leetcode 230: https://leetcode.com/problems/kth-smallest-element-in-a-bst/description/
詳解: https://www.cnblogs.com/grandyang/p/4620012.html

https://www.nowcoder.com/practice/ef068f602dde4d28aab2b210e859150a?tpId=13&&tqId=11215&rp=1&ru=/activity/oj&qru=/ta/coding-interviews/question-ranking

解法:
# divide and conquer
1. 先計算出左子樹的數量
2. 比較 k 是在左子樹還是右子樹，如果 k <= 左子樹的數量，只要在左子樹裡尋找就可以了
3. 如果是在右子樹 k = k - cnt - 1, 因為 cnt 是左子樹，1是目前的點
4. 如果 k = cnt + 1，表示目前的點就是答案
