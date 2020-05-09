题目描述
请实现一个函数用来找出字符流中第一个只出现一次的字符。例如，当从字符流中只读出前两个字符"go"时，第一个只出现一次的字符是"g"。当从该字符流中读出前六个字符“google"时，第一个只出现一次的字符是"l"。


解題：
1. hash 從 key: 值, value: index
2. use black list to filter more then 2 duplicates
2. finish the first value of the hash
