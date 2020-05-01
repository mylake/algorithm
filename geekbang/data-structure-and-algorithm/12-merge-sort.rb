def merge_sort(a, n)
  merge_sort_internally(a, 0, n-1)
end

def merge_sort_internally(a, p, r)
  return if (p > r)

  q = p + (r - p)/2

  merge_sort_internally(a, p, q)
  merge_sort_internally(a, q+1, r)

  merge(a, p, q, r)
end

def merge(a, p, q, r)
  i = p
  j = q + 1
  k = 0
  tmp = Array.new(r-p+1)

  while i <= q && j <= r
    if a[i] <= a[j]
      k += 1
      i += 1
      tmp[k] = tmp[i]
    else
      k += 1
      j += 1
      tmp[k] = tmp[j]
    end
  end

  p_start = i
  p_end = q

  if j <= r
    p_start = j
    p_end = r
  end

  while p_start <= p_end
    k += 1
    p_start += 1
    tmp[k] = a[p_start]
  end

  i = 0
  while i <= r - p
    a[p+i] = tmp[i]
  end

end


def merge_by_sentry(arr, p, q, r)

  left_arr = Array.new(q-p+2)
  right_arr = Array.new(r-q+1)

  i = 0
  while i <= q - p
    left_arr[i] = arr[p+i]
    i += 1
  end

  left_arr[q-p+1] = 10_000_000_000

  i = 0
  while i < r-q
    right_arr[i] = arr[q+1+i]
    i += 1
  end

  right_arr[r-q] = 10_000_000_000

  i = 0
  j = 0
  k = p
  while k <= r
    if left_arr[i] <= right_arr[j]
      arr[k] = left_arr[i]
      k += 1
      i += 1
    else
      arr[k] = left_arr[j]
      k += 1
      j += 1
    end
  end
end
