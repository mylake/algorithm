function FindKthToTail(head, k) {
    let right = head;
    for (let i = 0; i < k; ++i) {
        if (right === null) {
            // 链表长度小于k
            return null;
        }
        right = right.next;
    }

    let left = head;
    while (right) {
        left = left.next;
        right = right.next;
    }

    return left;
}
