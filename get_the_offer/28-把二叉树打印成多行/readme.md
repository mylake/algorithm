题目描述
从上到下按层打印二叉树，同一层结点从左至右输出。每一层输出一行。

https://www.nowcoder.com/practice/445c44d982d04483b04a54f298796288?tpId=13&&tqId=11213&rp=1&ru=/ta/coding-interviews&qru=/ta/coding-interviews/question-ranking




解法
https://blog.csdn.net/weixin_40668866/article/details/104873769
https://www.cnblogs.com/zhonghuasong/p/7098076.html

1. 兩個 array, result = [], queue = []
2. 當 queue 有值的時候，先計算目前 queue 的 size 代表，同一層的有多少個節點
3. 從 queue 拿值出來的時候，在把它的子節點放進去 queue 裡
4. 在同一層拿出來的同時，將其值塞入 result
