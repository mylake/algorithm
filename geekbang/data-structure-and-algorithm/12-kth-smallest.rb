def kth_smallest(arr, k)
  return -1 if arr.nil? || arr.size < k

  p = partition(arr, 0, arr.length - 1)

  while p + 1 != k
    if p + 1 < k
      p = partition(arr, p + 1, arr.size - 1)
    else
      p = partition(arr, 0, p - 1)
    end
  end

  return a[p]
end

def partition(arr, p, r)
  pivot = arr[r]

  i = p
  j = p

  while j < r
    if arr[j] <= pivot
      swap(arr, i, j)
      i += 1
    end

    swap(arr, i, r)
    j += 1
  end
end

def swap(arr, i, j)
  return if i == j

  tmp = arr[i]
  arr[i] = arr[j]
  arr[j] = tmp
end
