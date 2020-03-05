class ArrayQueue

  def initialize(capacity)
    @items = Array.new(capacity)
    @size = capacity
    @tail = @head = 0
  end

  def enqueue(item)
    if @tail == @size
      return false if @head == 0

      i = @head
      while i < @tail
        @items[i - head] = items[i]
      end

      @tail = @tail - @head
      @head = 0
    end

    @items[@tail] = item
    @tail += 1
    true
  end

  def dequeue
    return if @head == @tail

    result = items[@head]
    @head += 1
    result
  end

end
