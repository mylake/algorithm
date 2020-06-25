题目描述
给定一个二叉树和其中的一个结点，请找出中序遍历顺序的下一个结点并且返回。注意，树中的结点不仅包含左右子结点，同时包含指向父结点的指针


https://www.itdaan.com/blog/2019/01/05/2678af43698e252f1e3f44ca68181b4e.html
解法:
1. 有右子樹的，找右子樹的最左邊的節點
2. 沒有右子樹的，如果本身是父節點的左邊節點，返回父節點
3. 沒有右子樹的，如果本身是父節點的右邊節點，繼續往上找，直到找到節點為父節點的左邊節點，返回父節點


1.
```
p = p.right
while p.left
 p = p.left
end
p
```

2,3.
```
while p.parent
  if p.parent.left == p
    return p.parent
  else
     p = p.parent
  end
  nil
end
```
