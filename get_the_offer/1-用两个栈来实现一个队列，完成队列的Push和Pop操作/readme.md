题目描述
用两个栈来实现一个队列，完成队列的Push和Pop操作。 队列中的元素为int类型。

解題
1. two stacks, one push, one for pop
2. push => just push
3. pop =>
3.1 if pop-stack is not null, just pop
3.2 need to move everything from push-stach to pop-stack if pop-stack is null
