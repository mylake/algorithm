题目描述
在一个排序的链表中，存在重复的结点，请删除该链表中重复的结点，重复的结点不保留，返回链表头指针。 例如，链表1->2->3->3->4->4->5 处理后为 1->2->5


https://www.nowcoder.com/practice/fc533c45b73a41b0b44ccba763f866ef?tpId=13&&tqId=11209&rp=1&ru=/ta/coding-interviews&qru=/ta/coding-interviews/question-ranking

leetcode 83: https://leetcode.com/problems/remove-duplicates-from-sorted-list/

leetcode 82: https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/

解法
leetcode: 83
1. if cur.next.val == cur.val => cur.next = cur.next
2. else cur = cur.next


leetcode: 82
1. 建立新節點，新節點指向 head,
```
    result = ListNode.new
    pre = result
    pre.next = head
```
2. pre.next 迴圈，前指針，現在指針
3. while 目前值和下個節點的值相等時，現在指針一直往後移
4. 如果現在節點是前指針的下個節點的話，前指針往後移
5. 如果現在節點不是前指針的下個節點，將前指針的下個節點改為現在的下一個節點
