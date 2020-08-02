题目描述
输入一个整数数组，判断该数组是不是某二叉搜索树的后序遍历的结果。如果是则输出Yes,否则输出No。假设输入的数组的任意两个数字都互不相同。


leetcode cn: https://leetcode-cn.com/problems/er-cha-sou-suo-shu-de-hou-xu-bian-li-xu-lie-lcof/


解法:
recrusive.  i: first-node, j: last-node
1. 終止條件 i>=j
2. 區分左右子樹，找到第一個大於 j 的節點 m （binary_search_tree, left tree is smaller than root, right tree is bigger than root）
3. i~m-1 => 左子樹, m~j-1 => 右子樹
4. [i~m-1] < root, [m~j-1] > root
5. 要檢查右子樹是不是全部大於 root, 不然 return false


non-recrusive: ex: 1,3,2,6,5
1. 倒序 postorder. 5,6,2,3,1
2. 找到第一個降序的節點 2
3. 2的父節點為大於2的最小節點 => 5
4. 2的右邊所有的點都要小於 5
