class MinStack

=begin
    initialize your data structure here.
=end
    def initialize()
        @stack = []
        @min_stack = []
    end


=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
        @stack << x
        if @min_stack.empty? || x <= @min_stack[-1]
            @min_stack << x
        end
    end


=begin
    :rtype: Void
=end
    def pop()
        value = @stack.pop
        @min_stack.pop if (value == @min_stack[-1])
    end


=begin
    :rtype: Integer
=end
    def top()
        @stack[-1]
    end


=begin
    :rtype: Integer
=end
    def get_min()
        @min_stack[-1]
    end


end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(x)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()
