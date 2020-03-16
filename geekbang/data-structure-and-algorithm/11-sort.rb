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

  def insertion_sort(a, n)
    return if n <= 1

    i = 1
    while i < n
      value = a[i]

      j = i - 1

      while j >= 0
        break if a[j] <= value

        a[j+1] = a[j]

        j -= 1
      end
      a[j+1] = value

      i += 1
    end
  end

  def selection_sort(a, n)
    return if n <= 1

    i = 0
    while i < n-1
      min_index = i
      j = i + 1

      while j < n
        min_index = j if a[j] < a[min_index]
        j += 1
      end

      tmp = a[i]
      a[i] = a[min_index]
      a[min_index] = tmp

      i += 1
    end
  end

end
