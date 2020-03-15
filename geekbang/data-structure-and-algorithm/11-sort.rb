class Sort

  # a => array
  # n => size
  def bubble_sort(a, n)
    return if n <= 1

    i = 0
    while i < n
      flag = false
      j = 0
      while j < n - i - 1
        if a[j] > a[j + 1]
          tmp = a[j]
          a[j] = a[j + 1]
          a[j + 1] = tmp
          flag = true
        end
        j += 1
      end
      return unless flag

      i += 1
    end
  end

  def bubble_sort2(a, n)
    return if n <= 1

    last_exchange = 0
    sort_borader = n - 1

    i = 0
    while i < n
      flag = false

      j = 0
      while j < sort_borader
        if a[j] > a[j+1]
          tmp = a[j]
          a[j] = a[j+1]
          a[j+1] = tmp
          flag = true
          last_exchange = j
        end
        j += 1
      end
      sort_borader = last_exchange
      return unless flag

      i += 1
    end

  end

end
