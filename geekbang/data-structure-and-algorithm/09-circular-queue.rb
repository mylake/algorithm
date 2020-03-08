class CircularQueue

  def initialize(size)
    @items = Array(size)
    @n = size
    @tail = @head = 0;
  end

  def enqueue(item)
    return false if (@tail + 1) % n == @head

    @items[@tail] = items
    @tail = (@tail + 1) % n
    true
  end

  def dequeue
    return if @head = @tail

    value = @items[@head]
    @head = (@head + 1) % n
    value
  end

  def print_all
    return if @n == 0

    i = @head
    while ( i % n != @tail)
      puts(@items[i])

      i = (i + 1) % n
    end
  end
end
