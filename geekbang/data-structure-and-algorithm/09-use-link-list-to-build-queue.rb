class QueueBasedOnLinkedList

  def initialize
    @head = @tail = Node.new(nil)
  end

  def enqueue(value)
    if @tail
      @tail.next = Node.new(value)
      @tail = @tail.next
    else
      @head = @tail = Node.new(value)
    end
  end

  def dequeue
    return unless @head

    value = @head.data
    @head = @head.next

    @tail = nil unless @head

    value
  end

  def print_all
    p = @head

    while p
      puts "#{p.data} "
      p = p.next
    end
  end

end


class Node

  attr_reader :data, :next

  def initialize(data, next_node = nil)
    @data = data
    @next = next_node
  end

end
