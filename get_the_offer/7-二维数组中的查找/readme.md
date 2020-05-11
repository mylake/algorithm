题目描述
在一个二维数组中（每个一维数组的长度相同），每一行都按照从左到右递增的顺序排序，每一列都按照从上到下递增的顺序排序。请完成一个函数，输入这样的一个二维数组和一个整数，判断数组中是否含有该整数。


解法：
1. 從每一個行的第一個數開始找，找到第一個大於目標值的數
2. 行數減一 (第0行的話就不用減一了)
3. 從2. 那一行開始找，都用二分搜尋法


二分搜尋法訣竅
1. right = n.size 的話
2. while 用 left < right
3. 且 right = mid

```
left = 0, right = n.size
while left < right
 mid = left + (right - left)/2
 return true if left == target

 if left < target
   left = mid + 1
 else
   right = mid
 end
end
```
