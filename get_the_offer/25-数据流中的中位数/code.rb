class MedianFinder

=begin
    initialize your data structure here.
=end
    def initialize()
       @array = []
    end


=begin
    :type num: Integer
    :rtype: Void
=end
    def add_num(num)
        @array.insert(get_index(num), num)
    end


=begin
    :rtype: Float
=end
    def find_median()
        mid = @array.length / 2
        return @array.length % 2 == 0 ? (@array[mid-1] + @array[mid]) / 2.0 :  @array[mid] / 1.0
    end

    def get_index(num)
      return 0 if @array.length == 0
      lo = 0
      hi = @array.length-1
      while lo < hi
        mid = (lo + hi) / 2
        return mid if num == @array[mid]
        num > @array[mid] ? lo = mid + 1 : hi = mid - 1
      end
      return num > @array[lo] ? lo + 1: lo
    end
end

# Your MedianFinder object will be instantiated and called as such:
# obj = MedianFinder.new()
# obj.add_num(num)
# param_2 = obj.find_median()
