class MyQueue

=begin
    Initialize your data structure here.
=end
    def initialize()
       @queue = []
    end


=begin
    Push element x to the back of queue.
    :type x: Integer
    :rtype: Void
=end
    def push(x)
      @queue << x
    end


=begin
    Removes the element from in front of queue and returns that element.
    :rtype: Integer
=end
    def pop()
      temp = @queue.first
      @queue = @queue.slice(1, @queue.length)
      temp
    end


=begin
    Get the front element.
    :rtype: Integer
=end
    def peek()
      @queue.first
    end


=begin
    Returns whether the queue is empty.
    :rtype: Boolean
=end
    def empty()
      @queue.empty?
    end


end

# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()
